import std.algorithm.setops;
import std.algorithm;
import std.stdio;
import std.string;
import std.typecons;
import timetable.src.myproject.models.models;
import timetable.src.myproject.models.functions;

void main(){


    int[string] task_requirements_table = [
        "coding" : 10,
        "data analysis" : 10,
        "formal communications" : 6,
        "training" : 3
    ];

    TimeSlot[] this_week = [
        TimeSlot(11, 1105, 1215),
        TimeSlot(11, 1230, 1310),
        TimeSlot(11, 1414, 1448),
        TimeSlot(11, 1512, 1630),
        TimeSlot(12, 1105, 1215),
        TimeSlot(12, 1230, 1310),
        TimeSlot(12, 1414, 1448),
        TimeSlot(12, 1512, 1630)
    ];

    Tag[] all_tag_table = [
        Tag(1, "coding"),
        Tag(2, "data analysis"),
        Tag(3, "formal communication"),
        Tag(4, "training")
    ];


    JobTask[] all_task_table = [
        JobTask(1, "First, Coding Project", [all_tag_table[0]]),
        JobTask(2, "Second, Coding and Analysis Task", [all_tag_table[0],all_tag_table[1]]),
        JobTask(3, "Third, Letter to the Dean", [all_tag_table[2]]),
        JobTask(4, "Fourth, Supervise intern", [all_tag_table[3]]),
        JobTask(5, "Fifth, training collab with follow up letter to supervisor", [all_tag_table[2],all_tag_table[3]])
    ];
}