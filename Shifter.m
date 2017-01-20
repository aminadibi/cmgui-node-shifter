% Cmgui Node File Shifter || a Tool for Cmgui

% Coded by Mohammad Amin Adibi (madi566@aucklanduni.ac.nz, ma.adibi@gmail.com)
% Research Trainee
% Auckland Bioengineering Institute, August 2011
function varargout = Shifter(varargin)

% Last Modified by GUIDE v2.5 29-Aug-2011 08:10:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function About_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Import_Callback(hObject, eventdata, handles)
% hObject    handle to Import (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Export_Callback(hObject, eventdata, handles)
% hObject    handle to Export (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
stop;



function import_address_Callback(hObject, eventdata, handles)
% hObject    handle to import_address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of import_address as text
%        str2double(get(hObject,'String')) returns contents of import_address as a double
input_address =(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function import_address_CreateFcn(hObject, eventdata, handles)
% hObject    handle to import_address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x as text
%        str2double(get(hObject,'String')) returns contents of edit_x as a double
%store the contents of input1_editText as a string. if the string
%is not a number then input will be empty
input_delta_x = str2double(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input_delta_x))
     set(hObject,'String','0')
    % set(handles.log_edit_2,'String','Warning: delta-values must be numerical or else they will be changed to 0.');
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y as text
%        str2double(get(hObject,'String')) returns contents of edit_y as a double
input_delta_y = str2double(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input_delta_y))
     set(hObject,'String','0')
end
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_z_Callback(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_z as text
%        str2double(get(hObject,'String')) returns contents of edit_z as a double
input_delta_z = str2double(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input_delta_z))
     set(hObject,'String','0')
end
guidata(hObject, handles);



% --- Executes during object creation, after setting all properties.
function edit_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function export_address_Callback(hObject, eventdata, handles)
% hObject    handle to export_address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of export_address as text
%        str2double(get(hObject,'String')) returns contents of export_address as a double
destination_address =(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function export_address_CreateFcn(hObject, eventdata, handles)
% hObject    handle to export_address (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in transform.
function transform_Callback(hObject, eventdata, handles)
%t=import.address()
% hObject    handle to transform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%a = get(handles.input1_editText,'String');
set(handles.log_edit,'String','initializing...');
clc;

imp_adr=get(handles.import_address,'String'); 
exp_adr=get(handles.export_address,'String');

delta_x=get(handles.edit_x,'String');
delta_x=str2double(delta_x);

delta_y=get(handles.edit_y,'String');
delta_y=str2double(delta_y);

delta_z=get(handles.edit_z,'String');
delta_z=str2double(delta_z);

mult_x=get(handles.mult_x,'String');
mult_x=str2double(mult_x);

mult_y=get(handles.mult_y,'String');
mult_y=str2double(mult_y);

mult_z=get(handles.mult_z,'String');
mult_z=str2double(mult_z);

skipper=4; % the skipper is a counter used for skipping writing old node co-ordinators after new co-ordinates are written
endoffile=0;
fid_imp = fopen(imp_adr, 'r');
if fid_imp==-1
    set(handles.log_edit,'String','Error: Import address is not valid!');
    return;
end
C = textscan(fid_imp,'%s','delimiter','\n'); % reads the input exnode file line by line
fclose(fid_imp);
file_content=C{1,1}; %copies file to an array, C itself is a Cell
start_position = strfind(file_content,'Node'); %finds the position of Node labels; the three next lines will contain node coordinates
[x,y]=size(start_position); % x will contain number of nodes

delete (exp_adr);
fid_exp = fopen(exp_adr, 'a'); %creating destination file
if fid_exp==-1
    set(handles.log_edit,'String','Error: Export address is not valid!');
    return;
end
number_of_transed_nodes = 0;
for ind = 1 : x
    clear temp;
    clear new_x;
    clear new_y;
    clear new_z;
    if (skipper > 3) %fulfilled when we are NOT reading node coordinates
        temp = cell2mat (file_content(ind)); %copying the current line into destination file
        fprintf(fid_exp, '%s\n', temp);
    else
        skipper=skipper+1; %fulfilled when we are at a coordinate line 
    end
    
    if cell2mat(start_position(ind)) == 1  %fulfilled when we are just about to see a set of co-ordinates
         if (cell2mat(start_position(ind-1))==1) | (cell2mat(start_position(ind+1))==1) % handles a special case in which there's a big list of Nodes at the end of the exnode file
             endoffile=1;
         end
           
            % We'll handle the next three lines all together,  then skipper helps skipping these three lines in the next three loops        
         if endoffile~=1 
            skipper=1;
            %beginning of multiplying
            clear temp;
            temp = str2double(file_content(ind+1)); % reads original coordinate
            new_x = temp * mult_x; % shifts coordinate
            %fprintf(fid_exp, '%e\n', temp); %writes new coordinate as scientific numbers
            
            clear temp;
            temp = str2double(file_content(ind+2)); % reads original coordinate
            new_y = temp * mult_y; % shifts coordinate
            %fprintf(fid_exp, '%e\n', temp); %writes new coordinate as scientific numbers
            
            
            clear temp;
            temp = str2double(file_content(ind+3)); % reads original coordinate
            new_z = temp * mult_z; % shifts coordinate
            %fprintf(fid_exp, '%e\n', temp); %writes new coordinate as scientific numbers
            
            %end of multiplying
            
            %beginning of summing
            %clear temp;
            %temp = str2double(file_content(ind+1)); % reads original coordinate
            %temp = temp + delta_x; % shifts coordinate
            new_x = new_x + delta_x;
            fprintf(fid_exp, '%e\n', new_x); %writes new coordinate as scientific numbers
        
            %clear temp;
            %temp = str2double(file_content(ind+2));
            %temp = temp + delta_y;
            new_y = new_y + delta_y;
            fprintf(fid_exp, '%e\n', new_y);
        
            %clear temp;
            %temp = str2double(file_content(ind+3));
            %temp = temp + delta_z;
            new_z = new_z + delta_z;
            fprintf(fid_exp, '%e\n', new_z);
        
            %enf od summing
            clear temp;
            number_of_transed_nodes = number_of_transed_nodes + 3 ;
         end
      
    end
end
if (number_of_transed_nodes < 1)
    set(handles.log_edit,'String','Error: Nodes not found or could not be shifted');
    return;
end
        
fclose(fid_exp);
log1=num2str(number_of_transed_nodes);
log=strcat(log1, ' Nodes were succesfuly shifted and saved to  ', exp_adr);
set(handles.log_edit,'String',log);
guidata(hObject, handles);



function mult_x_Callback(hObject, eventdata, handles)
% hObject    handle to mult_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mult_x as text
%        str2double(get(hObject,'String')) returns contents of mult_x as a double
input_mult_x = str2double(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input_mult_x))
     set(hObject,'String','0')
    % set(handles.log_edit_2,'String','Warning: delta-values must be numerical or else they will be changed to 0.');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function mult_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mult_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mult_y_Callback(hObject, eventdata, handles)
% hObject    handle to mult_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mult_y as text
%        str2double(get(hObject,'String')) returns contents of mult_y as a double
input_mult_y = str2double(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input_mult_y))
     set(hObject,'String','0')
    % set(handles.log_edit_2,'String','Warning: delta-values must be numerical or else they will be changed to 0.');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function mult_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mult_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mult_z_Callback(hObject, eventdata, handles)
% hObject    handle to mult_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mult_z as text
%        str2double(get(hObject,'String')) returns contents of mult_z as a double
input_mult_z = str2double(get(hObject,'String'));

%checks to see if input is empty. if so, default input1_editText to zero
if (isempty(input_mult_z))
     set(hObject,'String','0')
    % set(handles.log_edit_2,'String','Warning: delta-values must be numerical or else they will be changed to 0.');
end
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function mult_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mult_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
