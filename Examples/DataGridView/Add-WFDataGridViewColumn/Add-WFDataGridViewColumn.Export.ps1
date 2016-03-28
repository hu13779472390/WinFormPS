﻿#------------------------------------------------------------------------
# Source File Information (DO NOT MODIFY)
# Source ID: f7c89b20-6eb8-46f5-8bd8-2bdd4e97df8f
# Source File: Add-WFDataGridViewColumn.psf
#------------------------------------------------------------------------
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
swsAAB+LCAAAAAAABAC9Vl2P2jAQfK/U/2D5mYOEjwOkEAlo6VW9tqhQrm8nJ1k4FydGjgOkv74b
AhTIUQI6EBLCiXdnZ2d2hfUDXDkHFX9gmhH8EXIZtGiZ2u/fEWJ9V3zCAyZ6XMA35oPd9ry7p15y
+ZPi3ojDoitF5AfFWTi2SpnraRLnN7ia6HgGLTqIQw1+8YkHnlyExZ5UfvpdIK+9KpDRuqZq0Ug+
BdKNhI4UtAKItGKiQPqRI7j7BeKhnELQcup1VnNr92azUgWj0aQkwFJadIz5MHeStj9AHhsalLgv
XHgKQ2lXBlpJEab0sfa+kjNQOl7n6AoOgR7wP0DtWrlcIOV70yptLh0JSjpB7WPwJ8OHsNTU3oaS
O3JMhGyqj3Msd53nUTLveBnPyWurtArYRJ8WLqmtI5dX104jjiOX5v+0ynbuUbpMIz61TaOCWlWq
mQ4dU2sDmCMgdUPVqCOCkeP+kDmfAw+W1C5nBSulPc+vQCfSWgZXF8BZwaBfUqddrEMyMpUs72My
HMDmVqNRS3DOEiOP1OkoYjkkdz0/QxjxMGJioGMBHeZOMVQqag9VBK/F744srht3munC8+rxwaye
bZzd9XF1+3gINkGwOYKdOcQp5wdgHhbzAHzystq/X6WHOrcjLZNTDiH2TWjm9+Be7fn3QbOBFjTz
bJx/Hsyujz1d9w/tMAQfuw/h5u76SWz7oSuV4M4bKGiVtlkPUVLP3ALjzX15GjEZj9sAKbbgweQS
LKMyro3rY9P0agarsNNYv3xxG05coU2ligeg5tyFiyQ7m11XKrgJvTUrHFWkdgVu22M621Zp90+6
/RefycOXswsAAA==#>
#endregion

<#
    .NOTES
    --------------------------------------------------------------------------------
     Code generated by:  SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.117
     Generated on:       2016-03-24 1:42 PM
     Generated by:        
     Organization:        
    --------------------------------------------------------------------------------
    .DESCRIPTION
        GUI script generated by PowerShell Studio 2016
#>
#----------------------------------------------
#region Application Functions
#----------------------------------------------

#endregion Application Functions

#----------------------------------------------
# Generated Form Function
#----------------------------------------------
function Call-Add-WFDataGridViewColumn_psf {

	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.DirectoryServices, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.ServiceProcess, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formWinFormPSAddWFDataGr = New-Object 'System.Windows.Forms.Form'
	$textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$buttonAddColumn = New-Object 'System.Windows.Forms.Button'
	$datagridview1 = New-Object 'System.Windows.Forms.DataGridView'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$formWinFormPSAddWFDataGr_Load = {
	}
	
	
	
	#region Control Helper Functions
	function Load-DataGridView
	{
		<#
		.SYNOPSIS
			This functions helps you load items into a DataGridView.
	
		.DESCRIPTION
			Use this function to dynamically load items into the DataGridView control.
	
		.PARAMETER  DataGridView
			The ComboBox control you want to add items to.
	
		.PARAMETER  Item
			The object or objects you wish to load into the ComboBox's items collection.
		
		.PARAMETER  DataMember
			Sets the name of the list or table in the data source for which the DataGridView is displaying data.
	
		#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory = $true)]
			[System.Windows.Forms.DataGridView]$DataGridView,
			[ValidateNotNull()]
			[Parameter(Mandatory = $true)]
			$Item,
			[Parameter(Mandatory = $false)]
			[string]$DataMember
		)
		$DataGridView.SuspendLayout()
		$DataGridView.DataMember = $DataMember
		
		if ($Item -is [System.ComponentModel.IListSource]`
		-or $Item -is [System.ComponentModel.IBindingList] -or $Item -is [System.ComponentModel.IBindingListView])
		{
			$DataGridView.DataSource = $Item
		}
		else
		{
			$array = New-Object System.Collections.ArrayList
			
			if ($Item -is [System.Collections.IList])
			{
				$array.AddRange($Item)
			}
			else
			{
				$array.Add($Item)
			}
			$DataGridView.DataSource = $array
		}
		
		$DataGridView.ResumeLayout()
	}
	#endregion
	
	function Add-WFDataGridViewColumn
	{
	<#
	.SYNOPSIS
		This function add a column to a DataGridView
	.DESCRIPTION
		This function add a column to a DataGridView
	.EXAMPLE
		Add-WFDataGridViewColumn -DataGridView $datagridview1 -ColumnName $($textbox1.Text -split "," -replace '^\s+', '' -replace '\s+$', '')
	.EXAMPLE
		Add-WFDataGridViewColumn -DataGridView $datagridview1 -ColumnName "First Name","Last Name","SamAccountName","Description"
	.NOTES
		Francois-Xavier Cat
		www.lazywinadmin.com
		@lazywinadm
		github.com/lazywinadmin
	#>
		[CmdletBinding()]
		PARAM (
			[ValidateNotNull()]
			[Parameter(Mandatory = $true)]
			[System.Windows.Forms.DataGridView]$DataGridView,
			
			[String[]]$ColumnName
		)
		BEGIN
		{
			Add-Type -AssemblyName System.Windows.Forms
		}
		PROCESS
		{
			foreach ($Column in $ColumnName)
			{
				
				# Create Column object
				$NewColumn = New-Object -TypeName System.Windows.Forms.DataGridViewTextBoxColumn
				$NewColumn.Name = $Column
				$NewColumn.HeaderText = $Column
				
				# Add the Column to the Datagridview
				$DataGridView.Columns.Add($NewColumn)
			}
		}
	} #Add-WFDataGridViewColumn
	
	
	$buttonAddColumn_Click = {
		if ($textbox1.Text)
		{
			# Add the a new column (separated by a comma), additionally it will remove white spaces at the beginning and end
			Add-WFDataGridViewColumn -DataGridView $datagridview1 -ColumnName $($textbox1.Text -split "," -replace '^\s+', '' -replace '\s+$', '')
		}
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formWinFormPSAddWFDataGr.WindowState = $InitialFormWindowState
	}
	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonAddColumn.remove_Click($buttonAddColumn_Click)
			$formWinFormPSAddWFDataGr.remove_Load($formWinFormPSAddWFDataGr_Load)
			$formWinFormPSAddWFDataGr.remove_Load($Form_StateCorrection_Load)
			$formWinFormPSAddWFDataGr.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formWinFormPSAddWFDataGr.SuspendLayout()
	#
	# formWinFormPSAddWFDataGr
	#
	$formWinFormPSAddWFDataGr.Controls.Add($textbox1)
	$formWinFormPSAddWFDataGr.Controls.Add($buttonAddColumn)
	$formWinFormPSAddWFDataGr.Controls.Add($datagridview1)
	$formWinFormPSAddWFDataGr.ClientSize = '522, 261'
	$formWinFormPSAddWFDataGr.Name = 'formWinFormPSAddWFDataGr'
	$formWinFormPSAddWFDataGr.Text = 'WinFormPS - Add-WFDataGridViewColumn'
	$formWinFormPSAddWFDataGr.add_Load($formWinFormPSAddWFDataGr_Load)
	#
	# textbox1
	#
	$textbox1.Location = '103, 234'
	$textbox1.Name = 'textbox1'
	$textbox1.Size = '407, 20'
	$textbox1.TabIndex = 2
	#
	# buttonAddColumn
	#
	$buttonAddColumn.Location = '12, 232'
	$buttonAddColumn.Name = 'buttonAddColumn'
	$buttonAddColumn.Size = '85, 23'
	$buttonAddColumn.TabIndex = 1
	$buttonAddColumn.Text = 'Add Column'
	$buttonAddColumn.UseVisualStyleBackColor = $True
	$buttonAddColumn.add_Click($buttonAddColumn_Click)
	#
	# datagridview1
	#
	$datagridview1.ColumnHeadersHeightSizeMode = 'AutoSize'
	$datagridview1.Location = '12, 12'
	$datagridview1.Name = 'datagridview1'
	$datagridview1.Size = '498, 214'
	$datagridview1.TabIndex = 0
	$formWinFormPSAddWFDataGr.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formWinFormPSAddWFDataGr.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formWinFormPSAddWFDataGr.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formWinFormPSAddWFDataGr.add_FormClosed($Form_Cleanup_FormClosed)
	#Show the Form
	return $formWinFormPSAddWFDataGr.ShowDialog()

} #End Function

#Call the form
Call-Add-WFDataGridViewColumn_psf | Out-Null
