import './App.css';
import axios from 'axios';
import { Formik, Form, Field, ErrorMessage } from 'formik';
import * as Yup from 'yup';
import { useState } from 'react';

function App() {
  const [theme, setTheme] = useState("light");
  const [response, setResponse] = useState();
  const [healthConditions, setHealthConditions] = useState();
  const [healthTips, setHealthTips] = useState([]);
  const [name, setName] = useState();
  const [loading, setIsloading] = useState(false);
  
  const initialValues = {
    "name": "Enter You Name",
    "age": 18,
    "gender": "male",
    "weight": 52,
    "height": 177,
    "activity_level": "moderately_active",
    "user_preferences": "vegetarian",
    "health_conditions": "fit"
  }
  const validationSchema = Yup.object().shape({
    name: Yup.string().required("Write your name"),
    age: Yup.number().required("Enter age").min(0),
    gender: Yup.string().required("Choose a option"),
    weight: Yup.number().required("Enter Weight"),
    height: Yup.number().required("Enter height"),
    activity_level: Yup.string().required("Choose an option"),
    user_preferences: Yup.string().required("Choose a option"),
    health_conditions: Yup.string().required("Choose a option")
  });
  const themeChange = () => {
    if (theme === "light") {
      setTheme("dark")
    } else {
      setTheme("light")
    }
  }
  const generateHealthTips = () => {
    const getHealthTips = (condition) => {
      switch ('heart-patient') {
        case "fit":
          return ["Eat a healthy diet", "Exercise regularly", "Get enough sleep"];
        case "heart-patient":
          return ["Eat a healthy diet", "Exercise regularly", "Avoid smoking", "Control your blood pressure"];
        case "diabetic-patient":
          return ["Eat a healthy diet", "Exercise regularly", "Take your medication as prescribed", "Monitor your blood sugar levels"];
        case "low-weight":
          return ["Eat a healthy diet", "Exercise regularly", "Talk to your doctor about weight gain"];
        case "high-weight":
          return ["Eat a healthy diet", "Exercise regularly", "Talk to your doctor about weight loss"];
        default:
          return [];
      }
    };

    const healthTips = getHealthTips(healthConditions);
    if (healthTips.length > 0) {
      return healthTips
    } else {
      return []
    }
  }
  const onSubmit = (data) => {
    setIsloading(true);
    data = {
      "name": data.name,
      "age": data.age,
      "gender": data.gender,
      "weight": data.weight,
      "height": data.height,
      "activity_level": data.activity_level,
      "user_preferences": data.user_preferences,
      "health_conditions": data.health_conditions
    }
    axios.post("http://localhost:8000/generateDietPlan", {
      headers: {
        'Content-Type': 'application/json'
      },
      body: data
    }).then(res => {
      setHealthConditions(data.health_conditions);
      setName(data.name);
      setHealthTips(generateHealthTips());
      setResponse(res.data.message);
      setIsloading(false);

    })
  }
  return (
    <div className={`App ${theme}`}>
      <h1 className="text-4xl p-4" >Diet Recommendation System</h1>
      <button onClick={themeChange}>Toggle {theme} mode</button>
      <Formik initialValues={initialValues} onSubmit={onSubmit} validationSchema={validationSchema}>
        <Form>

          <div className='mt-4 flex justify-around'>
            <div className='flex justify-around'>
              <h1 className='text-xl'>Name: </h1>
              <label className='p-2'>
                <Field className={`${theme}`} type="text" name="name" />
              </label>
            </div>
          </div>

          <div className='mt-4'>
            <label className='text-xl'>Age : </label>
            <ErrorMessage className='text-xs text-white' name='age' component="span"></ErrorMessage>
            <Field className={`${theme}`} name="age" placeholder="enter age" type="number" />
          </div>



          <div className='mt-4'>
            <label className='text-xl'>Height : </label>
            <ErrorMessage className='text-xs text-white' name='age' component="span"></ErrorMessage>
            <Field className={`${theme}`} name="height" placeholder="enter your weight in kg" type="number" />
          </div>

          <div className='mt-4'>
            <label className='text-xl'>Weight : </label>
            <ErrorMessage className='text-xs text-white' name='age' component="span"></ErrorMessage>
            <Field className={`${theme}`} name="weight" placeholder="enter your height in cm" type="number" />
          </div>

          <div className='mt-4 flex justify-around'>
            <div className=''>
              <h1 className='text-xl'>Activity Level : </h1>
              <label className='p-2'>
                <Field type="radio" name="activity_level" value="sedentary" />
                sedentary
              </label>
              <label className='p-2'>
                <Field type="radio" name="activity_level" value="lightly_active" />
                Lightly Active
              </label>
              <label className='p-2'>
                <Field type="radio" name="activity_level" value="moderately_active" />
                Moderately Active
              </label>
              <label className='p-2'>
                <Field type="radio" name="activity_level" value="very_active" />
                Very Active
              </label>
              <label className='p-2'>
                <Field type="radio" name="activity_level" value="extra_active" />
                Extra Active
              </label>
            </div>
          </div>


          <div className='mt-4'>
            <label className='text-xl'>Gender : </label>
            <Field className={`${theme}`} name="gender" as="select">
              <option value="male">male</option>
              <option value="female">female</option>
            </Field>
          </div>

          <div className='mt-2'>
            <div>
              <label className='text-xl'>User Preferences : </label>
              <Field className={`${theme}`} name="accident" as="select">
                <option value="vegetarian">Vegetarian</option>
                <option value="non-vegetarian">Non Vegetarian</option>
              </Field>
            </div>
            <div>
              <label className='text-xl'>Health Conditions : </label>
              <Field className={`${theme}`} name="health_conditions" as="select">
                <option value="heart-patient">Heart Patient</option>
                <option value="diabetic-patient">Diabetic Patient</option>
                <option value="low-weight">Low Weight</option>
                <option value="high-weight">High Weight</option>
                <option value="fit">Fit</option>
              </Field>
            </div>
          </div>


          <button onClick={onSubmit} className="bg-green-500 mt-6 hover:bg-blue-700 shadow-xl text-white uppercase text-sm font-semibold px-14 py-3 rounded">Recommend Diet</button>
        </Form>
      </Formik>
      {
        loading &&
        <div className='mt-2'>
          <div class="mt-10 animate-spin inline-block w-10 h-10 border-[3px] border-current border-t-transparent text-purple-600 rounded-full" role="status" aria-label="loading">
            <span class="sr-only">Loading...</span>
          </div>
          <h1>Loading...</h1>
        </div>
      }
      <div className='mt-8 pb-40'>
        {
          response &&
          <div>
            <h1 className='font-semibold text-xl'>Results:</h1>
            <h3 className='pt-2'>You have calorie requirements of <span className='text-green-400'>{response[3].calorie_requirements}</span>.</h3>
            <h2 className='p-2'>According to this your recommended diet plan is:</h2>
            <div className='flex justify-around'>
              <div>
                <h2 className='text-xl font-bold mb-2'>
                  Breakfast:
                </h2>
                <ul>
                  {
                    response[0].Breakfast.map((key) => {
                      return <li className='list-disc text-left'>{key}</li>
                    })
                  }
                </ul>
              </div>
              <div>
                <h2 className='text-xl font-bold mb-2'>
                  Lunch :
                </h2>
                <ul>
                  {
                    response[1].Lunch.map((key) => {
                      return <li className='list-disc text-left'>{key}</li>
                    })
                  }
                </ul>
              </div>
              <div>
                <h2 className='text-xl font-bold mb-2'>
                  Dinner:
                </h2>
                <ul>
                  {
                    response[2].Dinner.map((key) => {
                      return <li className='list-disc text-left'>{key}</li>
                    })
                  }
                </ul>
              </div>
            </div>
            <div>
              <h1 className='text-xl font-bold mb-2 pt-4'>Health Tips :</h1>
              <p>{name} ,You are {healthConditions}. According to your BMR and health conditions here are some health tips for your condition:</p>
              <ul>
              {
                  healthTips.map((value,key) => {
                    return <li className='list-disc text-center text-lg hover:text-blue-500 transition duration-300'>{key+1}. {value}</li>
                  })
                }
              </ul>
            </div>
          </div>
        }
      </div>
    </div>
  );
}

export default App;
