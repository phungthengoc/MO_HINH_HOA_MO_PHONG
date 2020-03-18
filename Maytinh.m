function varargout = Maytinh(varargin)
% MAYTINH MATLAB code for Maytinh.fig
%      MAYTINH, by itself, creates a new MAYTINH or raises the existing
%      singleton*.
%
%      H = MAYTINH returns the handle to a new MAYTINH or the handle to
%      the existing singleton*.
%
%      MAYTINH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAYTINH.M with the given input arguments.
%
%      MAYTINH('Property','Value',...) creates a new MAYTINH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Maytinh_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Maytinh_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Maytinh

% Last Modified by GUIDE v2.5 18-Mar-2020 10:40:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Maytinh_OpeningFcn, ...
                   'gui_OutputFcn',  @Maytinh_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Maytinh is made visible.
function Maytinh_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Maytinh (see VARARGIN)

% Choose default command line output for Maytinh
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Maytinh wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global jj shift
set(handles.sc2,'string', '0.')
jj=0;
shift = 0;


% --- Outputs from this function are returned to the command line.
function varargout = Maytinh_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in buttonTru.
function buttonTru_Callback(hObject, eventdata, handles)
% hObject    handle to buttonTru (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.sc2,'String');
textString = strcat(textString,'-');
set(handles.sc2,'String',textString);

% --- Executes on button press in buttonNhan.
function buttonNhan_Callback(hObject, eventdata, handles)
% hObject    handle to buttonNhan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.sc2,'String');
textString = strcat(textString,'X');
set(handles.sc2,'String',textString);


% --- Executes on button press in buttonChia.
function buttonChia_Callback(hObject, eventdata, handles)
% hObject    handle to buttonChia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.sc2,'String');
textString = strcat(textString,':');
set(handles.sc2,'String',textString);


% --- Executes on button press in buttonBang.
function buttonBang_Callback(hObject, eventdata, handles)
% hObject    handle to buttonBang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.sc2,'String');
result = eval(textString);
set(handles.sc2,'String',result);%eval thuc hien tinh toan khi co chuoi tinh toan ' 3+5'
% --- Executes on button press in buttonCong.
function buttonCong_Callback(hObject, eventdata, handles)
% hObject    handle to buttonCong (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
textString = get(handles.sc2,'String');
textString = strcat(textString,'+');
set(handles.sc2,'String',textString)
% --- Executes on button press in b1.
function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','1');
else
    value = strcat(value,'1') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;


% --- Executes on button press in b2.
function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','2');
else
    value = strcat(value,'2') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;

% --- Executes on button press in b3.
function b3_Callback(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','3');
else
    value = strcat(value,'3') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;
% --- Executes on button press in b4.
function b4_Callback(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','4');
else
    value = strcat(value,'4') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;
% --- Executes on button press in b5.
function b5_Callback(hObject, eventdata, handles)
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','5');
else
    value = strcat(value,'5') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;
% --- Executes on button press in b6.
function b6_Callback(hObject, eventdata, handles)
% hObject    handle to b6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','6');
else
    value = strcat(value,'6') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;
% --- Executes on button press in b7.
function b7_Callback(hObject, eventdata, handles)
% hObject    handle to b7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','7');
else
    value = strcat(value,'7') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;

% --- Executes on button press in b8.
function b8_Callback(hObject, eventdata, handles)
% hObject    handle to b8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','8');
else
    value = strcat(value,'8') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'String',value)
end
jj=0;
% --- Executes on button press in b9.
function b9_Callback(hObject, eventdata, handles)
% hObject    handle to b9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','9');
else
    value = strcat(value,'9') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc1,'String',value)
end
jj=0;

% --- Executes on button press in AC.
function AC_Callback(hObject, eventdata, handles)
% hObject    handle to AC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.sc2,'String','0.');

% --- Executes on button press in on.
function on_Callback(hObject, eventdata, handles)
% hObject    handle to on (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = get(handles.sc2,'String')
if( strcmp(value , '0.') == 1)
    set(handles.sc2,'String','')
else
set(handles.sc2,'String','0.');
end

function sc1_Callback(hObject, eventdata, handles)
% hObject    handle to sc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sc1 as text
%        str2double(get(hObject,'String')) returns contents of sc1 as a double


% --- Executes during object creation, after setting all properties.
function sc1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in buttonCham.
function buttonCham_Callback(hObject, eventdata, handles)
% hObject    handle to buttonCham (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'string');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'string','0.');
    jj = 1; %bien tam khi neu bam them 1 so thi se la so 2 chu so,    
else
    value = strcat(value,'.') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc2,'string',value)
end



% --- Executes on button press in b0.
function b0_Callback(hObject, eventdata, handles)
% hObject    handle to b0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global jj
value = get(handles.sc2,'String');
%thuc hien qua trinh tinh toan
%xuat ket qua
if(strcmp(value,'0.') == 1) && (jj == 0) %trang thai ban dau cua man hinh
    set(handles.sc2 , 'String','0');
else
    value = strcat(value,'0') %dung de noi 1 chuoi ki tu voi nhau (ghepso)
    set(handles.sc1,'String',value)
end
jj=0;
