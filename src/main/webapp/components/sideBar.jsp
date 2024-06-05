<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div class="flex flex-col h-full w-auto px-4">
  <div class="mb-6 mt-6 flex w-full flex-row justify-between items-center">
    <h3 class="text-xl">Menu</h3>
  </div>
  <ul
    class="flex flex-col ml-5 w-[10vw] border-l-2 border-[rgb(79, 138, 237)] pr-3"
  >
    <a
      id="dashBoard-link"
      href="/dashBoard"
      name="dashboard"
      class="cursor-pointer w-full link flex flex-row items-center text-md mb-2 ml-3 p-3 rounded"
    >
      <label class="cursor-pointer">DashBoard</label>
    </a>

    <a
      id="book-link"
      href="/book"
      name="book"
      class="cursor-pointer w-full link flex flex-row items-center text-md mb-2 ml-3 p-3 rounded"
    >
      <label class="cursor-pointer">Book</label>
    </a>

    <a
      id="member-link"
      href="/member"
      name="member"
      class="cursor-pointer w-full link flex flex-row items-center text-md mb-2 ml-3 p-3 rounded"
    >
      <label class="cursor-pointer">Member</label>
    </a>

    <a
      id="lend-link"
      href="/lend"
      name="lend"
      class="cursor-pointer w-full link flex flex-row items-center text-md mb-2 ml-3 p-3 rounded"
    >
      <label class="cursor-pointer">Lend</label>
    </a>

    <a
      id="return-link"
      href="/return"
      name="return"
      class="cursor-pointer w-full link flex flex-row items-center text-md mb-2 ml-3 p-3 rounded"
    >
      <label class="cursor-pointer">Return</label>
    </a>
  </ul>
</div>
