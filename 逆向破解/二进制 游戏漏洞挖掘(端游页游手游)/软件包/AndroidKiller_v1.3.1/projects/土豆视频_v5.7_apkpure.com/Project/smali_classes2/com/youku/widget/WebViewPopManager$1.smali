.class Lcom/youku/widget/WebViewPopManager$1;
.super Ljava/lang/Object;
.source "WebViewPopManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/WebViewPopManager;->initPopupWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/WebViewPopManager;


# direct methods
.method constructor <init>(Lcom/youku/widget/WebViewPopManager;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/youku/widget/WebViewPopManager$1;->this$0:Lcom/youku/widget/WebViewPopManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager$1;->this$0:Lcom/youku/widget/WebViewPopManager;

    invoke-static {v0}, Lcom/youku/widget/WebViewPopManager;->access$000(Lcom/youku/widget/WebViewPopManager;)Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager$1;->this$0:Lcom/youku/widget/WebViewPopManager;

    invoke-static {v0}, Lcom/youku/widget/WebViewPopManager;->access$000(Lcom/youku/widget/WebViewPopManager;)Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/youku/widget/WebViewPopManager$OnPopItemClickListener;->refresh()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/youku/widget/WebViewPopManager$1;->this$0:Lcom/youku/widget/WebViewPopManager;

    invoke-static {v0}, Lcom/youku/widget/WebViewPopManager;->access$100(Lcom/youku/widget/WebViewPopManager;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 68
    return-void
.end method
