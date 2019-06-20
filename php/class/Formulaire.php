<?php
	/**
	 * Created by PhpStorm.
	 * User: x_sal
	 * Date: 06/06/2019
	 * Time: 13:41
	 */
	
	class Formulaire
	{
		private $html ="";
		
		public function __construct($action, $method){
			
			$this->html.="<form action='$action' method='$method'>";
		}
		
		
		public function input($type,$nom,$placeholder=null,$value=null,$id=null, $class=null, $required=false){
			
			$typeAutorise=['text','email','password'];
			
			if (in_array($type, $typeAutorise)){
				if ($required){
                    $this->html.="<input type='$type' name='$nom' placeholder='$placeholder' value='$value' id='$id' class='$class' required>";
                }
				else{
                    $this->html.="<input type='$type' name='$nom' placeholder='$placeholder' value='$value' id='$id' class='$class'>";
                }
			}
			else{
				echo "le type $type n'est pas autorisé<br/>";
			}
		}
		
		
		public function select($nom,$tbl,$selected = null){
			
			$this->html.="<select name='$nom'>";
			
			foreach ($tbl as $index => $element){
				if ($index == $selected){
					$this->html.="<option value='$index' selected>$element</option>";
				}
				else{
					$this->html.="<option value='$index'>$element</option>";
				}
			}
			$this->html.='</select>';
		}
		
		
		public function radio($nom,$tbl,$selected=null){
			
			foreach ($tbl as $index => $element){
				if ($index == $selected){
					$this->html.="<label><input type='radio' name='$nom' value='$element' checked>$element</label>";
				}
				else{
					$this->html.="<label><input type='radio' name='$nom' value='$element'>$element</label>";
				}
			}
		}
		
		
		public function checkbox($nom,$value,$label,$coche=false){
			
			if ($coche){
				$this->html.="<label><input type='checkbox' name='$nom' value='$value' checked>$label</label>";
			}
			else{
				$this->html.="<label><input type='checkbox' name='$nom' value='$value'>$label</label>";
			}
			
		}
		
		
		public function texte($string){
			$this->html.="<p>$string</p>";
		}
		
		
		public function br(){
		    $this->html.='<br />';
        }
		
		
		public function submit($nom, $value){
			$this->html.="<input type='submit' value='$value' name='$nom'>";
		}
		
		
		public function render(){
			return $this->html."</form>";
		}
	}