.class Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;
.super Ljava/lang/Object;
.source "TypingMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imlib/TypingMessage/TypingMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceiveRunnable"
.end annotation


# instance fields
.field private conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:Ljava/lang/String;

.field final synthetic this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;


# direct methods
.method private constructor <init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 0
    .param p2, "conversationType"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "targetId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/rong/imlib/model/Conversation$ConversationType;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p4, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iput-object p1, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p2, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    .line 170
    iput-object p3, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    .line 172
    return-void
.end method

.method synthetic constructor <init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/LinkedHashMap;Lio/rong/imlib/TypingMessage/TypingMessageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lio/rong/imlib/TypingMessage/TypingMessageManager;
    .param p2, "x1"    # Lio/rong/imlib/model/Conversation$ConversationType;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/util/LinkedHashMap;
    .param p5, "x4"    # Lio/rong/imlib/TypingMessage/TypingMessageManager$1;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";;;"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 135
    .local v2, "iterator":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 136
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 137
    .local v4, "mapEntry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 139
    .local v5, "mapEntry2":Ljava/util/Map$Entry;
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$300()Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v10, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-interface {v8, v9, v10, v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;->onChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 142
    .local v0, "dur":J
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_2

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    move-object v4, v5

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mapEntry2":Ljava/util/Map$Entry;
    check-cast v5, Ljava/util/Map$Entry;

    .line 146
    .restart local v5    # "mapEntry2":Ljava/util/Map$Entry;
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$300()Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v10, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-interface {v8, v9, v10, v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;->onChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 148
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v0, v8, v10

    goto :goto_0

    .line 150
    :cond_0
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$300()Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v10, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-interface {v8, v9, v10, v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;->onChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 152
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-static {v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v0    # "dur":J
    .end local v4    # "mapEntry":Ljava/util/Map$Entry;
    .end local v5    # "mapEntry2":Ljava/util/Map$Entry;
    :cond_1
    :goto_1
    return-void

    .line 156
    .restart local v0    # "dur":J
    .restart local v4    # "mapEntry":Ljava/util/Map$Entry;
    .restart local v5    # "mapEntry2":Ljava/util/Map$Entry;
    :cond_2
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$100()I

    move-result v7

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-lez v7, :cond_3

    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$100()I

    move-result v7

    int-to-long v0, v7

    .line 158
    :cond_3
    new-instance v6, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;

    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    iget-object v8, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v9, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    iget-object v10, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v6, v7, v8, v9, v10}, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;-><init>(Lio/rong/imlib/TypingMessage/TypingMessageManager;Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/LinkedHashMap;)V

    .line 159
    .local v6, "receiveRunnable":Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-static {v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$200(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 161
    .end local v0    # "dur":J
    .end local v5    # "mapEntry2":Ljava/util/Map$Entry;
    .end local v6    # "receiveRunnable":Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;
    :cond_4
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$300()Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->conversationType:Lio/rong/imlib/model/Conversation$ConversationType;

    iget-object v10, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->targetId:Ljava/lang/String;

    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-interface {v8, v9, v10, v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager$TypingMessageStatusListener;->onChanged(Lio/rong/imlib/model/Conversation$ConversationType;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    iget-object v7, p0, Lio/rong/imlib/TypingMessage/TypingMessageManager$ReceiveRunnable;->this$0:Lio/rong/imlib/TypingMessage/TypingMessageManager;

    invoke-static {v7}, Lio/rong/imlib/TypingMessage/TypingMessageManager;->access$400(Lio/rong/imlib/TypingMessage/TypingMessageManager;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
