"struct" @keyword
"enum" @keyword
"impl" @keyword
"for" @keyword
"service" @keyword
"method" @keyword
"returns" @keyword
"version" @keyword
"device" @keyword
"mod" @keyword
((identifier) @variable
    (#set! priority 5))
(number) @number
(type) @type
(string) @string
(struct_name) @type
(enum_name) @type
(method_name) @function
(method_input_type) @type
(method_output_type) @type
(struct_field_name) @property
(enum_field_name) @constant
(param_name) @function
(comment) @comment
