.class Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;
.super Ljava/lang/Object;
.source "IOConnection.java"

# interfaces
.implements Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->remoteAcknowledge(Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;)Lcom/youku/laifeng/libcuteroom/model/socketio/IOAcknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

.field final synthetic val$endPoint:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->val$endPoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs ack([Ljava/lang/Object;)V
    .locals 9
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 378
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 379
    .local v1, "array":Lorg/json/JSONArray;
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, p1, v4

    .line 381
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    :try_start_0
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    new-instance v7, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;

    const-string v8, "You can only put values in IOAcknowledge.ack() which can be handled by JSONArray.put()"

    invoke-direct {v7, v8, v2}, Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {v6, v7}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$100(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Lcom/youku/laifeng/libcuteroom/model/socketio/SocketIOException;)V

    goto :goto_1

    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->val$endPoint:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->val$id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 389
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    .local v0, "ackMsg":Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;
    iget-object v4, p0, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection$1;->this$0:Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;

    invoke-virtual {v0}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOMessage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;->access$400(Lcom/youku/laifeng/libcuteroom/model/socketio/IOConnection;Ljava/lang/String;)V

    .line 391
    return-void
.end method
