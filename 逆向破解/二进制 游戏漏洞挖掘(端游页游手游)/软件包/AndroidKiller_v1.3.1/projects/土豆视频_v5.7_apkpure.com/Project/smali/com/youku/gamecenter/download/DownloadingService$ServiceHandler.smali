.class Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;
.super Landroid/os/Handler;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/download/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/download/DownloadingService;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/download/DownloadingService;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 166
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DownloadingService.handleMessage("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$502(Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 172
    const/4 v15, 0x0

    const/16 v16, 0xf

    invoke-static/range {v15 .. v16}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v11

    .line 174
    .local v11, "message":Landroid/os/Message;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v9, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MESSAGE_ON_GETALL:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 177
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 178
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 179
    .local v14, "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 181
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v15}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 182
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_2
    if-eqz v14, :cond_4

    .line 185
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    if-eqz v15, :cond_3

    .line 186
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    const/16 v16, 0x5

    invoke-virtual/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;->setErrorCode(I)V

    .line 188
    const/4 v15, 0x0

    iput-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadThread:Lcom/youku/gamecenter/download/DownloadingService$DownloadThread;

    .line 190
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$600(Lcom/youku/gamecenter/download/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v15

    iget-object v0, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/youku/gamecenter/download/DownloadInfo;->mNotificationID:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/app/NotificationManager;->cancel(I)V

    .line 192
    const/4 v15, 0x0

    iput-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mNotification:Landroid/app/Notification;

    .line 194
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 197
    .end local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_5
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v15, "list"

    invoke-virtual {v3, v15, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    invoke-virtual {v11, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 201
    :try_start_0
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 202
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$500()Landroid/os/Messenger;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 203
    :catch_0
    move-exception v8

    .line 204
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 208
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;>;>;"
    .end local v11    # "message":Landroid/os/Message;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v7

    .line 210
    .local v7, "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "uid"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$702(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v16

    const-string/jumbo v17, "ytidAndUsernameAndVip"

    invoke-virtual/range {v16 .. v17}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$802(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "MESSAGE_DOWNLOAD_START:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/util/SystemUtils;->isNetWorkAvaliable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$900(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 215
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1000(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 216
    const/4 v15, 0x6

    iput v15, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 217
    const/4 v15, 0x2

    iput v15, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1100(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    move-result-object v14

    .line 219
    .restart local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/youku/gamecenter/download/SQLManager;->insertToDB(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v15

    invoke-interface {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;->onDownloadPending(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 226
    .end local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_7
    iget v15, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1000(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 228
    invoke-static {v7}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1300(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 231
    :cond_8
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v15

    iget-object v0, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v15

    iget-object v0, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/youku/gamecenter/download/SQLManager;->updatePauseState(Ljava/lang/String;I)V

    .line 235
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$200()Ljava/util/Map;

    move-result-object v15

    iget-object v0, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    .line 237
    .restart local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    iget v15, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v15, :cond_9

    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-eqz v15, :cond_9

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v0, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$1400(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    const/16 v16, 0x1

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$1502(Lcom/youku/gamecenter/download/DownloadingService;Z)Z

    .line 240
    const/4 v15, 0x0

    iput v15, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadWay:I

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1600(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 244
    :cond_9
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->isSilentDownload(I)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 246
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    invoke-static {v15}, Lcom/youku/gamecenter/util/FileUtils;->isDownloadFileExsist(Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 247
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "DOWNLOAD_TYPE_SILENT donwloaded:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_a
    :goto_2
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " is in download list:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1600(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_2

    .line 251
    :cond_c
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    .line 252
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mType:I

    if-nez v15, :cond_a

    .line 253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/youku/gamecenter/R$string;->game_center_action_info_exist:I

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 256
    :cond_d
    iget-object v15, v14, Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;->mDownloadInfo:Lcom/youku/gamecenter/download/DownloadInfo;

    iget v15, v15, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 257
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v0, v7, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1600(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto :goto_2

    .line 264
    .end local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_f
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    const-string v16, "mDownloadMap.containsKey false"

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v7}, Lcom/youku/gamecenter/download/DownloadingService;->access$1600(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 269
    .end local v7    # "downloadInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v12

    .line 271
    .local v12, "pauseInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v13

    .line 272
    .local v13, "sqlManager":Lcom/youku/gamecenter/download/SQLManager;
    iget-object v15, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Lcom/youku/gamecenter/download/SQLManager;->updatePauseState(Ljava/lang/String;I)V

    .line 274
    iget-object v15, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    iget-wide v0, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mCurrentLength:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Lcom/youku/gamecenter/download/SQLManager;->updateCurrentLength(Ljava/lang/String;J)V

    .line 275
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v0, v12, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/youku/gamecenter/download/DownloadingService;->access$1700(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 278
    .end local v12    # "pauseInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    .end local v13    # "sqlManager":Lcom/youku/gamecenter/download/SQLManager;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v5

    .line 280
    .local v5, "continueInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v5}, Lcom/youku/gamecenter/download/DownloadingService;->access$900(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v5}, Lcom/youku/gamecenter/download/DownloadingService;->access$1000(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    .line 284
    const/4 v15, 0x6

    iput v15, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mState:I

    .line 285
    const/4 v15, 0x2

    iput v15, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mClickState:I

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v5}, Lcom/youku/gamecenter/download/DownloadingService;->access$1100(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;

    move-result-object v14

    .line 289
    .restart local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v15

    iget-object v0, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/youku/gamecenter/download/SQLManager;->updatePauseState(Ljava/lang/String;I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$1200(Lcom/youku/gamecenter/download/DownloadingService;)Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;

    move-result-object v15

    invoke-interface {v15, v5}, Lcom/youku/gamecenter/download/DownloadingService$IServiceDownloadListener;->onDownloadPending(Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 297
    .end local v14    # "task":Lcom/youku/gamecenter/download/DownloadingService$DownloadTask;
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v15

    iget-object v0, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/youku/gamecenter/download/SQLManager;->updatePauseState(Ljava/lang/String;I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    iget-object v0, v5, Lcom/youku/gamecenter/download/DownloadInfo;->mDownloadUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$300(Lcom/youku/gamecenter/download/DownloadingService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v5    # "continueInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v4

    .line 305
    .local v4, "cancelInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v4}, Lcom/youku/gamecenter/download/DownloadingService;->access$1400(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 309
    .end local v4    # "cancelInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lcom/youku/gamecenter/download/DownloadServiceMessage;->getDownloadInfoFromMsg(Landroid/os/Message;)Lcom/youku/gamecenter/download/DownloadInfo;

    move-result-object v6

    .line 311
    .local v6, "deletelInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v6}, Lcom/youku/gamecenter/download/DownloadingService;->access$1800(Lcom/youku/gamecenter/download/DownloadingService;Lcom/youku/gamecenter/download/DownloadInfo;)V

    goto/16 :goto_0

    .line 314
    .end local v6    # "deletelInfo":Lcom/youku/gamecenter/download/DownloadInfo;
    :pswitch_6
    invoke-static {}, Lcom/youku/gamecenter/download/DownloadingService;->access$100()Ljava/lang/String;

    move-result-object v15

    const-string v16, "processContinueAdv"

    invoke-static/range {v15 .. v16}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/youku/gamecenter/download/SQLManager;->getSQLManager(Landroid/content/Context;)Lcom/youku/gamecenter/download/SQLManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/youku/gamecenter/download/SQLManager;->getAdvDownload()Ljava/util/List;

    move-result-object v2

    .line 317
    .local v2, "advInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/download/DownloadInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15, v2}, Lcom/youku/gamecenter/download/DownloadingService;->access$1900(Lcom/youku/gamecenter/download/DownloadingService;Ljava/util/List;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$2000(Lcom/youku/gamecenter/download/DownloadingService;I)V

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$2000(Lcom/youku/gamecenter/download/DownloadingService;I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    const/16 v16, 0x4

    invoke-static/range {v15 .. v16}, Lcom/youku/gamecenter/download/DownloadingService;->access$2000(Lcom/youku/gamecenter/download/DownloadingService;I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/youku/gamecenter/download/DownloadingService$ServiceHandler;->this$0:Lcom/youku/gamecenter/download/DownloadingService;

    invoke-static {v15}, Lcom/youku/gamecenter/download/DownloadingService;->access$2100(Lcom/youku/gamecenter/download/DownloadingService;)V

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
