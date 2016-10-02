function varargout = bodepid(varargin)
% BODEPID MATLAB code for bodepid.fig
%      BODEPID, by itself, creates a new BODEPID or raises the existing
%      singleton*.
%
%      H = BODEPID returns the handle to a new BODEPID or the handle to
%      the existing singleton*.
%
%      BODEPID('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BODEPID.M with the given input arguments.
%
%      BODEPID('Property','Value',...) creates a new BODEPID or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before bodepid_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to bodepid_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help bodepid

% Last Modified by GUIDE v2.5 02-Oct-2016 11:25:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @bodepid_OpeningFcn, ...
                   'gui_OutputFcn',  @bodepid_OutputFcn, ...
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


% --- Executes just before bodepid is made visible.
function bodepid_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to bodepid (see VARARGIN)

% Choose default command line output for bodepid
handles.output = hObject;

% Put image inside of picture axes
pidPlant = importdata('fpid.jpg');
axes(handles.axSchematic);
hi = imagesc(pidPlant);
axis off;

% Update handles structure
guidata(hObject, handles);

% Save user data as structure
ud = struct;
ud.figureHandle = [];
ud.log = 1;
set(hObject, 'UserData', ud);


% UIWAIT makes bodepid wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = bodepid_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtZ_Callback(hObject, eventdata, handles)
% hObject    handle to txtZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtZ as text
%        str2double(get(hObject,'String')) returns contents of txtZ as a double


% --- Executes during object creation, after setting all properties.
function txtZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtP_Callback(hObject, eventdata, handles)
% hObject    handle to txtP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtP as text
%        str2double(get(hObject,'String')) returns contents of txtP as a double


% --- Executes during object creation, after setting all properties.
function txtP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtK_Callback(hObject, eventdata, handles)
% hObject    handle to txtK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtK as text
%        str2double(get(hObject,'String')) returns contents of txtK as a double


% --- Executes during object creation, after setting all properties.
function txtK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxK_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxK as text
%        str2double(get(hObject,'String')) returns contents of txtMaxK as a double


% --- Executes during object creation, after setting all properties.
function txtMaxK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderK_Callback(hObject, eventdata, handles)
% hObject    handle to sliderK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get the value of the slider
valK = get(handles.sliderK, 'value');

% Convert to number
set(handles.txtK, 'string', num2str(valK));

% Update before proceeding
drawnow;

% Finally, call the handling function
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sliderK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetK.
function btnSetK_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxK, 'string'));
myMin = str2double(get(handles.txtMinK, 'string'));
myVal = str2double(get(handles.txtK, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxK, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinK, 'string', num2str(myVal)); end

set(handles.sliderK, 'Max', myMax);
set(handles.sliderK, 'Min', myMin);
set(handles.sliderK, 'Value', myVal);

fcdd_plot_responses(handles);



function txtMinK_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinK as text
%        str2double(get(hObject,'String')) returns contents of txtMinK as a double


% --- Executes during object creation, after setting all properties.
function txtMinK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtKi_Callback(hObject, eventdata, handles)
% hObject    handle to txtKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtKi as text
%        str2double(get(hObject,'String')) returns contents of txtKi as a double


% --- Executes during object creation, after setting all properties.
function txtKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxKi_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxKi as text
%        str2double(get(hObject,'String')) returns contents of txtMaxKi as a double


% --- Executes during object creation, after setting all properties.
function txtMaxKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderKi_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
valKi = get(handles.sliderKi, 'value');
set(handles.txtKi, 'string', num2str(valKi));
drawnow;
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sliderKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetKi.
function btnSetKi_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxKi, 'string'));
myMin = str2double(get(handles.txtMinKi, 'string'));
myVal = str2double(get(handles.txtKi, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxKi, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinKi, 'string', num2str(myVal)); end

set(handles.sliderKi, 'Max', myMax);
set(handles.sliderKi, 'Min', myMin);
set(handles.sliderKi, 'Value', myVal);

fcdd_plot_responses(handles);


function txtMinKi_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinKi as text
%        str2double(get(hObject,'String')) returns contents of txtMinKi as a double


% --- Executes during object creation, after setting all properties.
function txtMinKi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinKi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtKp_Callback(hObject, eventdata, handles)
% hObject    handle to txtKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtKp as text
%        str2double(get(hObject,'String')) returns contents of txtKp as a double


% --- Executes during object creation, after setting all properties.
function txtKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxKp_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxKp as text
%        str2double(get(hObject,'String')) returns contents of txtMaxKp as a double


% --- Executes during object creation, after setting all properties.
function txtMaxKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderKp_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% Get the value of the slider

valKp = get(handles.sliderKp, 'value');
set(handles.txtKp, 'string', num2str(valKp));
drawnow;
fcdd_plot_responses(handles);


% --- Executes during object creation, after setting all properties.
function sliderKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetKp.
function btnSetKp_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxKp, 'string'));
myMin = str2double(get(handles.txtMinKp, 'string'));
myVal = str2double(get(handles.txtKp, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxKp, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinKp, 'string', num2str(myVal)); end

set(handles.sliderKp, 'Max', myMax);
set(handles.sliderKp, 'Min', myMin);
set(handles.sliderKp, 'Value', myVal);

fcdd_plot_responses(handles);



function txtMinKp_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinKp as text
%        str2double(get(hObject,'String')) returns contents of txtMinKp as a double


% --- Executes during object creation, after setting all properties.
function txtMinKp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinKp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtKd_Callback(hObject, eventdata, handles)
% hObject    handle to txtKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtKd as text
%        str2double(get(hObject,'String')) returns contents of txtKd as a double


% --- Executes during object creation, after setting all properties.
function txtKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtMaxKd_Callback(hObject, eventdata, handles)
% hObject    handle to txtMaxKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMaxKd as text
%        str2double(get(hObject,'String')) returns contents of txtMaxKd as a double


% --- Executes during object creation, after setting all properties.
function txtMaxKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMaxKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function sliderKd_Callback(hObject, eventdata, handles)
% hObject    handle to sliderKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
valKd = get(handles.sliderKd, 'value');
set(handles.txtKd, 'string', num2str(valKd));
drawnow;
fcdd_plot_responses(handles);

% --- Executes during object creation, after setting all properties.
function sliderKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in btnSetKd.
function btnSetKd_Callback(hObject, eventdata, handles)
% hObject    handle to btnSetKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Update slider
myMax = str2double(get(handles.txtMaxKd, 'string'));
myMin = str2double(get(handles.txtMinKd, 'string'));
myVal = str2double(get(handles.txtKd, 'string'));

if myVal > myMax, myMax = myVal; set(handles.txtMaxKd, 'string', num2str(myVal)); end
if myVal < myMin, myMin = myVal; set(handles.txtMinKd, 'string', num2str(myVal)); end

set(handles.sliderKd, 'Max', myMax);
set(handles.sliderKd, 'Min', myMin);
set(handles.sliderKd, 'Value', myVal);

fcdd_plot_responses(handles);


function txtMinKd_Callback(hObject, eventdata, handles)
% hObject    handle to txtMinKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtMinKd as text
%        str2double(get(hObject,'String')) returns contents of txtMinKd as a double


% --- Executes during object creation, after setting all properties.
function txtMinKd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtMinKd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Get dynamic system
function [G,C,K,Kp,Ki,Kd] = fcdd_get_system(handles)
    
    % The transfer function
    K = str2double(get(handles.txtK, 'string'));
    p.K = K;
    b = str1poly(get(handles.txtZ, 'string'), p);
    a = str1poly(get(handles.txtP, 'string'), p);
    G = tf(b,a);
    
    % Is there a delay?
    myDelay = str2double(get(handles.txtL, 'string'));
    if myDelay < 0
        set(handles.txtL, 'string', '0');
        warning('Input-output delay cannot be negative');
        myDelay = 0;
    end
    
    if myDelay > 0
        G.ioDelay = myDelay;
    end
    
    % The controller
    s=tf('s');
    Kp = str2double(get(handles.txtKp, 'string'));
    Ki = str2double(get(handles.txtKi, 'string'));
    Kd = str2double(get(handles.txtKd, 'string'));
    C = Kp + Ki/s + Kd*s;

% --- Create the system and do the plot
function fcdd_plot_responses(handles)

    % Get handle object
    hObject = handles.output;
    
    % Get user data
    ud = get(hObject, 'UserData');
    fh = ud.figureHandle;
    
    % Do log?
    doLog = ud.log;
    doOldPlot = 0;
    
    % Create a figure if it doesn't exist
    if isempty(fh) || ~ishandle(fh)
        h = figure;
    else
        h = fh;
        ud = get(h, 'UserData');
        history = ud.history;
        doOldPlot = 1;
    end
    
    % Get necessary values if history exists
    if doOldPlot
       y_old = history.y;
       t_old = history.t;
       w_old = history.w;
       r_old = history.r;
       
       % Detailed frequency response
       r_db_old = 20*log10(abs(r_old));
       r_deg_old = rad2deg(angle(r_old));
       
       p_old = history.p;
    end
    
    udGui = struct;
    
    % Save for later
    udGui.figureHandle = h;
    udGui.log = doLog;
    
    % Get control system
    [G, C, K, Kp, Ki, Kd] = fcdd_get_system(handles);
    history.G = G;
    history.C = C;
    
    % Closed loop system step response
    CL = feedback(C*G,1);
    [y,t] = step(CL);
    
    % Save for later
    history.y = y;
    history.t = t;
    
    % Open loop frequency response
    [r,w] = freqresp(C*G);
    
    % Convert to single dimension
    r = r(:);
    w = w(:);
    
    history.r = r;
    history.w = w;
    
    % Closed loop pools (without regard to delay)
    G_nd = G;
    G_nd.ioDelay = [];
    CL_nd = feedback(C*G_nd,1);
    
    [b, a] = tfdata(CL_nd, 'v');
    p = roots(a);
    history.p = p;
    
    % Set current figure and clear it
    figure(h);
    clf(h);
    
    % Do the plots
    oldPlotColor = [0.7 0.7 0.7];
    newPlotColor = [0 0 1];
    
    % Time domain
    h1 = subplot(4,2,[2 4]);
    if doOldPlot
        plot(t_old,y_old,'Color',oldPlotColor,'LineWidth',2);
        hold on;
    end
    
    % Get some info on step
    S = stepinfo(y,t,y(end));
    
    % Form some nice analysis text
    titleText = ['Step resp.; Settl.t: ' ...
        num2str(S.SettlingTime) 's, Ovsht: ' num2str(S.Overshoot) '%'];
    
    plot(t,y,'Color',newPlotColor, 'LineWidth',2);
    title(titleText);
    
    xlims = get(gca, 'xlim');
    
    % Plot reference
    hold on;
    plot(xlims, [1 1], ':r', 'LineWidth', 2);

    % Produce a legend
    if doOldPlot
        legend('Prev. response', 'Cur. response', ...
            'Reference', 'Location', 'best');
    else
        legend('Prev. response', 'Reference', 'Location', 'best');
    end
    
    % Correct the limits a little
    ylims = get(gca, 'ylim');
    ylim([ylims(1)-0.5 ylims(2)+0.5]);
    
    grid;
    ylabel('Amplitude');
    
    % Frequency domain
    r_db = 20*log10(abs(r));
    r_deg = rad2deg(angle(r));
    
    % Get info on gm/pm
    [Gm,Pm,wcg,wcp] = margin(C*G);
    
    assignin('base', 'st', {wcg,wcp});
    
    % Some nice text
    titleText = ['Bode plot. Gm: ' num2str(Gm) ...
        ' dB; pm: ' num2str(Pm) ' deg.'];
    
    % Gain plot
    h2 = subplot(4,2,[1 3]);
    if doOldPlot
        semilogx(w_old, r_db_old, 'Color', oldPlotColor, 'LineWidth', 2);
        hold on;
    end
    semilogx(w, r_db, 'Color', newPlotColor, 'LineWidth', 2);
    ylabel('Magn. [dB]');
    title(titleText);
    
    % Plot gain/phase margins
    ylims = get(gca,'ylim');
    if ~isnan(wcg)
        hold on;
        semilogx([wcg wcg], ylims, 'k', 'LineWidth', 2);
    end
    
    if ~isnan(wcp)
        hold on;
        semilogx([wcp wcp], ylims, 'r', 'LineWidth', 2);
    end
    
    grid;

    % Phase plot
    h3 = subplot(4,2,[5 7]);
    if doOldPlot
        semilogx(w_old, r_deg_old, 'Color', oldPlotColor, 'LineWidth', 2);
        hold on;
    end
    semilogx(w, r_deg, 'Color', newPlotColor, 'LineWidth', 2);
    linkaxes([h2,h3],'x');
    xlim('auto');
    xlabel('Frequency [rad/s]');
    ylabel('Ph.angle [deg]');
    
    % Plot gain/phase margins
    ylims = get(gca,'ylim');
    if ~isnan(wcg)
        hold on;
        semilogx([wcg wcg], ylims, 'k', 'LineWidth', 2);
    end
    
    if ~isnan(wcp)
        hold on;
        semilogx([wcp wcp], ylims, 'r', 'LineWidth', 2);
    end
    
    grid;
    
    % Pole plot
    h4 = subplot(4,2,[6 8]);
    if doOldPlot
        plot(real(p_old),imag(p_old),'x','Color',oldPlotColor,'LineWidth',2);
        hold on;
    end
    plot(real(p), imag(p), 'x', 'Color', newPlotColor, 'LineWidth', 2);
    grid;
    xlabel('Real');
    ylabel('Imag');
    title('Cl.loop poles (sys. w/o delay)');
    
    % Correct the limits a little
    xlims = get(gca, 'xlim');
    ylims = get(gca, 'ylim');
    xlim(xlims + [-0.5 0.5]);
    ylim(ylims + [-0.5 0.5]);
    
    % Output log
    if doLog
       plantText = ['For plant G with K = ' num2str(K)];
       disp(plantText);
       
       controlText = ['with controller Kp=' num2str(Kp) ...
           ', Ki=' num2str(Ki) ', Kd=' num2str(Kd)];
       disp(controlText);
       
       if ~isnan(wcp)
        margin1Text = ['Phase margin: ' num2str(Pm) ' deg at freq. ' ...
            num2str(wcp) ' rad/s'];
        disp(margin1Text);
       end
       
       if ~isnan(wcg)
        margin2Text = ['Gain margin: ' num2str(Pm) ' dB at freq. ' ...
            num2str(wcg) ' rad/s'];
        disp(margin2Text);
       end
       
       controlQText = ['Settling time: ' num2str(S.SettlingTime) 's and ' ...
           'Percent overshoot: ' num2str(S.Overshoot) '%'];
       disp(controlQText);
       disp('----------------');
       
    end
    
    % Save new user data
    set(hObject, 'UserData', udGui);
    ud.history = history;
    set(h, 'UserData', ud);
    set(h, 'Name', 'Control system simulation', 'NumberTitle', 'off');
    


function txtL_Callback(hObject, eventdata, handles)
% hObject    handle to txtL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtL as text
%        str2double(get(hObject,'String')) returns contents of txtL as a double


% --- Executes during object creation, after setting all properties.
function txtL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function menuView_Callback(hObject, eventdata, handles)
% hObject    handle to menuView (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menuLog_Callback(hObject, eventdata, handles)
% hObject    handle to menuLog (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

h = handles.output;
ud = get(h, 'UserData');
if strcmpi(get(handles.menuLog, 'Checked'), 'on')
   set(handles.menuLog, 'Checked', 'off');
   ud.log = 0;
else
   set(handles.menuLog, 'Checked', 'on');
   ud.log = 1;
end
set(h, 'UserData', ud);

