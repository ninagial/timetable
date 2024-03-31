module timetable.src.myproject.models.models;

import std.typecons;
struct Tag {
    int id;
    string tag_name;
}

struct JobTask {
    int id;
    string task_name;
    Tag[] tags;
}

struct TimeSlot {
    int yearday;
    int start_time;
    int end_time;
    Nullable!( string[] ) include;
    Nullable!( string[] ) exclude;
    Nullable!( int ) task_id;
    bool occupied_p = true;

    int duration(){
        return this.end_time - this.start_time;
    }
}

// struct TaskRequirements {
//     string[] key;
//     int[] val;
// }
