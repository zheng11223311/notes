.class Lcom/tudou/android/chat/ChatConversationView$1$2;
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
    .line 92
    iput-object p1, p0, Lcom/tudou/android/chat/ChatConversationView$1$2;->this$1:Lcom/tudou/android/chat/ChatConversationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tudou/android/chat/ChatConversationView$1$2;->this$1:Lcom/tudou/android/chat/ChatConversationView$1;

    iget-object v0, v0, Lcom/tudou/android/chat/ChatConversationView$1;->this$0:Lcom/tudou/android/chat/ChatConversationView;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatConversationView;->access$000(Lcom/tudou/android/chat/ChatConversationView;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 96
    return-void
.end method
