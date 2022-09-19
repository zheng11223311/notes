.class Lcom/tudou/android/chat/ChatConversationView$1;
.super Ljava/lang/Object;
.source "ChatConversationView.java"

# interfaces
.implements Lio/rong/imkit/widget/InputView$OnInfoButtonClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatConversationView;->setOnInfoButtonClickListener(Lio/rong/imkit/fragment/ConversationFragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatConversationView;

.field final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatConversationView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    iput-object p2, p0, Lcom/tudou/android/chat/ChatConversationView$1;->val$roomId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    const-string v0, "byron"

    const-string v1, "OnInfoButtonClick(): onclick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    new-instance v1, Lcom/youku/widget/TudouDialog;

    iget-object v2, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-virtual {v2}, Lcom/tudou/android/chat/ChatConversationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tudou/android/chat/ChatConversationView;->access$002(Lcom/tudou/android/chat/ChatConversationView;Lcom/youku/widget/TudouDialog;)Lcom/youku/widget/TudouDialog;

    .line 84
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatConversationView;->access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    const-string v1, "\u786e\u5b9a\u53d1\u9001\u5f53\u524d\u7684\u89c2\u770b\u8fdb\u5ea6\u7ed9\u597d\u53cb\uff1f"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatConversationView;->access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tudou/android/chat/ChatConversationView$1$1;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatConversationView$1$1;-><init>(Lcom/tudou/android/chat/ChatConversationView$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatConversationView;->access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/tudou/android/chat/ChatConversationView$1$2;

    invoke-direct {v2, p0}, Lcom/tudou/android/chat/ChatConversationView$1$2;-><init>(Lcom/tudou/android/chat/ChatConversationView$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatConversationView;->access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 99
    return-void
.end method
