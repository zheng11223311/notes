.class Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;
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
    .line 104
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->access$000(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->access$100(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u571f\u8c46-\u6bcf\u4e2a\u4eba\u90fd\u662f\u751f\u6d3b\u7684\u5bfc\u6f14"

    :goto_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->access$200(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v2, v0, v3, v4}, Lcom/tudou/android/TudouApi;->shareUrl(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuildInBrowserFragment$2;->this$0:Lcom/tudou/ui/fragment/BuildInBrowserFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/BuildInBrowserFragment;->access$100(Lcom/tudou/ui/fragment/BuildInBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
