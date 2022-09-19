.class Lcom/tudou/android/chat/ChatFragment$2;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/android/chat/ChatFragment;->showExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/android/chat/ChatFragment;


# direct methods
.method constructor <init>(Lcom/tudou/android/chat/ChatFragment;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/tudou/android/chat/ChatFragment$2;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/tudou/android/chat/ChatFragment$2;->this$0:Lcom/tudou/android/chat/ChatFragment;

    invoke-static {v0}, Lcom/tudou/android/chat/ChatFragment;->access$000(Lcom/tudou/android/chat/ChatFragment;)Lcom/youku/widget/TudouDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->dismiss()V

    .line 452
    return-void
.end method
