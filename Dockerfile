# שלב הבסיס: שימוש בתמונה בסיסית של Python
FROM python:3.9-slim

# הגדרת תיקיית עבודה בקונטיינר
WORKDIR /app

# העתקת קובץ הדרישות (requirements.txt) לתוך הקונטיינר
COPY requirements.txt requirements.txt

# התקנת התלויות
RUN pip install --no-cache-dir -r requirements.txt

# העתקת קבצי הקוד של ה-Flask לתוך הקונטיינר
COPY . .

# חשיפת הפורט 5000 (ברירת מחדל של Flask)
EXPOSE 5000

# הפקודה שמריצה את האפליקציה
CMD ["flask", "run", "--host=0.0.0.0"]
