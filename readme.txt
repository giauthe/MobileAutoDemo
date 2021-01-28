# cấu trúc thu mục
Elements: Chứa các file element được xác định bằng id, class, xpath, ….
Keywords: Chứa các file keyword (common keyword, functional keyword)
Pythonlibs: Chứa các function pythonoption
Resources: Chứa app package cho mobile testing
Results: Chứa test result
Scripts: Script chạy ci/cd
Testcases: Chứa tất cả test case, mỗi file.robot là 1 test suite
Testdata: Chứa test data khi dùng data driven (excel, csv, …)
Variables: Chứa các biến global hoặc biến data cho test case)
import.robot: Import các file dùng chung để khi gọi trong keyword chỉ gọi file này => dễ maintain
.gitignore: file chứa các file ko push khi đẩy git
.config: file cấu hình với các biến theo môi trường

#Run android real device:
robot --loglevel TRACE -d results/results_android -v env:android -v platform:android testcases/android/Topup.robot

#Run both suite at the same time:
#Have difference options can search doccument of pabot-robotframework
pabot --processes 2 --loglevel TRACE -d results/results_android -v env:android -v platform:android testcases/LoginSwagLab


