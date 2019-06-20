<?php
	function tabl($data){
		
		$html= '<table>';
		$html.= '<thead><tr>';
		foreach ($data[0] as $key => $value) {
			if ($key !== '__PHP_Incomplete_Class_Name'){
				$html.= '<th>'.$key.'</th>';
			}
		}
		$html.='</tr></thead>';
		
		$html.='<tbody>';
		
		foreach ($data as $key => $ligne) {
		    if ($ligne->vie <= 0){
		        
                array_splice($_SESSION['perso'],$key,1);
            }
		    else{
                $html.='<tr>';
                foreach ($ligne as $cellule){
                    if ($cellule !== 'Personnage'){
                        $html.='<td>'. $cellule .'</td>';
                    }
                
                }
            }
			
			$html.='</tr>';
		}
		$html.='</tbody>';
		$html.='</table>';
		
		return $html;
	}
    
    
 
