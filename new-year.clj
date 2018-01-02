(let [date (java.util.Date.)
      sdf  (java.text.SimpleDateFormat. "yyyy")]
  (println (.format sdf date)))
