module timetable.src.myproject.models.functions;

import timetable.src.myproject.models.models;

int how_long(JobTask task, int[string] requirements_table){
    int out_val = 0;
    for (int tag_i=0;tag_i<task.tags.length;tag_i++)
    {
        int thing = requirements_table[task.tags[tag_i].tag_name];
        out_val += thing;
    }
    return out_val;
}

bool task_allocate(JobTask task, int[string] requirements_table, TimeSlot[] week){
    int recommended_duration = how_long(task, requirements_table);
    for (int i=0;i<week.length;i++)
    {

        if (!(week[i].occupied_p) && recommended_duration !=0)
        {
            // bool exclude_p;
            // if (!this_week[i].exclude.isNull)
            // {
            //     sort(task.tags);
            //     sort(this_week[i].exclude.get);
            //     int[] intersection = task.tags.setIntersection(this_week[i].exclude.get);
            //     exclude_p = intersection.length;
            // }

            if (week[i].exclude.isNull)
            
            {
                week[i].task_id = task.id;
                week[i].occupied_p = true;
                recommended_duration -= week[0].duration();
                if (recommended_duration <= 0){
                    return true;
                }

            }


        }
    }

    return recommended_duration <= 0;

}