class serverConfig {
  static const domainName = 'http://192.168.1.109:8000';
  //auth
  static const sendVerify = '/api/send_verify';
  static const login = '/api/verify';
  static const subject = '/api/teacher/subject/';
  static const Class = '/api/teacher/class/';
  static const logout = '/api/logout';
  static const studentName = '/api/classroom/student/';
  static const markstore = '/api/mark/insert';
  static const examtype = '/api/type';
  static const markShow = '/api/allmark';
  static const markUpdate = '/api/mark/update/';
  static const taskStore = '/api/homework/insert';
  static const taskIndex = '/api/homework/index';
  static const taskUpdate = '/api/homework/update/';
  static const taskDelete = '/api/homework/delete/';
  static const absenceIndex = '/api/absence/index/';
  static const weeklyprogram = '/api/weak/class/';
  static const studentSubject = '/api/subject/';
  static const result = '/api/mark/student';
  static const detail = '/api/homework/show/';
  static const rate = '/api/level/';
  static const absant = '/api/absence/show/';
  static const installment = '/api/free/show/';
}
