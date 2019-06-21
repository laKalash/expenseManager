<?php
	function tabl($data){
		
		$html= '<table>';
		$html.= '<thead><tr>';
		foreach ($data[0] as $key => $value) {
            
            $html.= '<th>'.$key.'</th>';
		}
		$html.='</tr></thead>';
		
		$html.='<tbody>';
		
		foreach ($data as $key => $ligne) {
		    
            $html.='<tr>';
            foreach ($ligne as $cellule){
                
                $html.='<td>'. $cellule .'</td>';
            }
            $html.='</tr>';
		}
		$html.='</tbody>';
		$html.='</table>';
		
		return $html;
	}
    
    
 
