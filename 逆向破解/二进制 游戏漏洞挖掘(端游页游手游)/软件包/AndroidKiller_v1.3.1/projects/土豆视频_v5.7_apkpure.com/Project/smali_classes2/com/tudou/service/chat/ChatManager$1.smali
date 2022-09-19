.class Lcom/tudou/service/chat/ChatManager$1;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lcom/youku/widget/InviteChatDialog$ButOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/chat/ChatManager;->checkClipShowDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/chat/ChatManager;

.field final synthetic val$chatInfo:Lcom/youku/vo/ChatDialogInfo;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tudou/service/chat/ChatManager;Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tudou/service/chat/ChatManager$1;->this$0:Lcom/tudou/service/chat/ChatManager;

    iput-object p2, p0, Lcom/tudou/service/chat/ChatManager$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tudou/service/chat/ChatManager$1;->val$chatInfo:Lcom/youku/vo/ChatDialogInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tudou/service/chat/ChatManager$1;->this$0:Lcom/tudou/service/chat/ChatManager;

    iget-object v1, p0, Lcom/tudou/service/chat/ChatManager$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tudou/service/chat/ChatManager$1;->val$chatInfo:Lcom/youku/vo/ChatDialogInfo;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/service/chat/ChatManager;->access$000(Lcom/tudou/service/chat/ChatManager;Landroid/content/Context;Lcom/youku/vo/ChatDialogInfo;Z)V

    .line 88
    return-void
.end method
