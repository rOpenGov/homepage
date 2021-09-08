
$.ajax({
    type: "GET",
    url: "https://api.github.com/orgs/ropengov/repos?per_page=100&sort=updated",
    dataType: "json",
    success: function(result) {
	var whitelist = ['homepage','geofi','hetu','eurostat','rqog','fmi2','pxweb','openthl','sweidnumber','regions','sotkanet','vipunen','digitransit','europarl', 'iotables', 'psData', 'pollstR', 'rwfs', 'hansard', 'europarl', 'RPublica', 'dkstat', 'usbroadband', 'mpg', 'federalregister', 'ogdindiar','helsinki', 'giscoR', 'retroharmonize']

	// edu,
	// eurostat_geodata

	// In devel:
	// sorvi, election

        // Remove: fmi, edudata, rustfare

        for( i in result ) {

        // homepage if exists
            if (result[i].homepage == null){
               homepage = ''
               homepage_icon = ''
            } else
            {
                homepage = result[i].homepage
                homepage_icon = '<i class="fa fa-home" aria-hidden="true"></i>'
            }

     if (whitelist.includes(result[i].name)) {
            $("#repo_tbl").append(
            "<tr> \
            <td><a href='https://github.com/ropengov/" + result[i].name + "'>" + result[i].name + "</a></td> \
            <td><i>"  + result[i].description +  "<i></td> \
            <td><a href = '"  + homepage +  "'>" + homepage_icon + "</a></td> \
            <td>" + result[i].forks + "</td> \
            <td>" + result[i].open_issues + "</td> \
            <td>" + result[i].stargazers_count + "</td> \
            <td>" + result[i].updated_at + "</td> \
            </tr>");
            console.log("i: " + i);
        }
        console.log(result);
        }
    }
  });
