.class Lcom/tudou/android/chat/ChatConversationView$1$1;
.super Ljava/lang/Object;
.source "ChatConversationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatConversationView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/android/chat/ChatConversationView$1;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatConversationView$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tudou/android/chat/ChatConversationView$1$1;->this$1:Lcom/tudou/android/chat/ChatConversationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1$1;->this$1:Lcom/tudou/android/chat/ChatConversationView$1;

    iget-object v0, v0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    iget-object v1, p0, Lcom/tudou/android/chat/ChatConversationView$1$1;->this$1:Lcom/tudou/android/chat/ChatConversationView$1;

    iget-object v1, v1, Lcom/tudou/android/chat/ChatConversationView$1;->val$roomId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tudou/android/chat/ChatConversationView;->access$100(Lcom/tudou/android/chat/ChatConversationView;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1$1;->this$1:Lcom/tudou/android/chat/ChatConversationView$1;

    iget-object v0, v0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatConversationView;->access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 90
    return-void
.end method
