.class Lcom/tudou/android/chat/ChatManager$8;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lio/rong/imkit/RongIM$OnReceiveUnreadCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatManager;->setOnReceiveUnreadMessageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatManager;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatManager;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/tudou/android/chat/ChatManager$8;->this$0:Lcom/tudou/android/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageIncreased(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 512
    const-string v0, "byron"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageIncreased(): count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-lez p1, :cond_0

    .line 514
    invoke-static {}, Lcom/tudou/service/chat/ChatManager;->getInstance()Lcom/tudou/service/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/service/chat/ChatManager;->showChatIconRedDot()V

    .line 516
    :cond_0
    return-void
.end method
