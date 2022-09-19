.class Lcom/tudou/ui/fragment/BuildInBrowserFragment$3;
.super Ljava/lang/Object;
.source "BuildInBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/BuildInBrowserFragment;->initTitle(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$3;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$3;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->access$400(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Lcom/youku/widget/WebViewPopManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$3;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->access$300(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/WebViewPopManager;->show(Landroid/view/View;)V

    .line 121
    return-void
.end method
