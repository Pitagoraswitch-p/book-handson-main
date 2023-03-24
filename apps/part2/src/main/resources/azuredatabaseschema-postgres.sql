CREATE TABLE IF NOT EXISTS task (
   id SERIAL NOT NULL, -- 識別子
   "user" VARCHAR(64) NOT NULL, -- ユーザーID
   "status" VARCHAR(64) NOT NULL, -- タスクのステータス
   title VARCHAR(64) NOT NULL, -- タスクのタイトル
   dueDate DATE NOT NULL, -- タスクの締め切り
   memo VARCHAR(64), -- タスクのコメント
   createdOn TIMESTAMP NOT NULL, -- タスクを作成した日時
   updatedOn TIMESTAMP NOT NULL, -- タスクを更新した日時
   PRIMARY KEY ( id )
);
