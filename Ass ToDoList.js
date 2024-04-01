document.addEventListener("DOMContentLoaded", function () {
    const taskInput = document.getElementById("taskInput");
    const addTaskBtn = document.getElementById("addTaskBtn");
    const taskList = document.getElementById("taskList");

    addTaskBtn.addEventListener("click", function () {
        const taskText = taskInput.value.trim();
        if (taskText !== "") {
            addTask(taskText);
            taskInput.value = "";
        } else {
            alert("Please enter a task!");
        }
    });

    function addTask(taskText) {
        const li = document.createElement("li");
        li.innerHTML = `
            <span>${taskText}</span>
            <button class="completeBtn">Complete</button>
            <button class="deleteBtn">Delete</button>
        `;
        taskList.appendChild(li);

        const completeBtn = li.querySelector(".completeBtn");
        const deleteBtn = li.querySelector(".deleteBtn");

        completeBtn.addEventListener("click", function () {
            li.classList.toggle("completed");
        });

        deleteBtn.addEventListener("click", function () {
            li.remove();
        });
    }
});
