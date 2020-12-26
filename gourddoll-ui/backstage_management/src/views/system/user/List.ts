import { defineComponent } from "vue";
import UserController from "@/service/controller/system/userController";
import pageSizeEnum from "@/service/enumeration/pageSizeEnum";

export default defineComponent({
  name: "UserList",
  async setup() {
    const columns = [
      {
        title: "nickName",
        dataIndex: "nickName",
        key: "nickName",
        slots: { customRender: "name" },
      },
    ];

    // const columns = [
    //   {
    //     title: "Name",
    //     dataIndex: "name",
    //     key: "name",
    //     slots: { customRender: "name" },
    //   },
    //   {
    //     title: "Age",
    //     dataIndex: "age",
    //     key: "age",
    //     width: 80,
    //   },
    //   {
    //     title: "Address",
    //     dataIndex: "address",
    //     key: "address 1",
    //     ellipsis: true,
    //   },
    //   {
    //     title: "Long Column Long Column Long Column",
    //     dataIndex: "address",
    //     key: "address 2",
    //     ellipsis: true,
    //   },
    //   {
    //     title: "Long Column Long Column",
    //     dataIndex: "address",
    //     key: "address 3",
    //     ellipsis: true,
    //   },
    //   {
    //     title: "Long Column",
    //     dataIndex: "address",
    //     key: "address 4",
    //     ellipsis: true,
    //   },
    // ];

    // const data = [
    //   {
    //     key: "1",
    //     name: "John Brown",
    //     age: 32,
    //     address: "New York No. 1 Lake Park, New York No. 1 Lake Park",
    //     tags: ["nice", "developer"],
    //   },
    //   {
    //     key: "2",
    //     name: "Jim Green",
    //     age: 42,
    //     address: "London No. 2 Lake Park, London No. 2 Lake Park",
    //     tags: ["loser"],
    //   },
    //   {
    //     key: "3",
    //     name: "Joe Black",
    //     age: 32,
    //     address: "Sidney No. 1 Lake Park, Sidney No. 1 Lake Park",
    //     tags: ["cool", "teacher"],
    //   },
    // ];

    const userController = new UserController();
    const data = await userController.getList({
      quickText: "",
      pageNum: 1,
      pageSize: 50,
    });

    const pagination = {
      pageSizeOptions: Object.values(pageSizeEnum)
        .filter((p) => Number.isFinite(p))
        .map((p) => p.toString()),
      // current: 1,
      // pageSize: 50,
      defaultPageSize: 50,
      showQuickJumper: true,
      showSizeChanger: true,
      total: data.total,
    };

    return { data: data.rows, columns, pagination };
  },
});
