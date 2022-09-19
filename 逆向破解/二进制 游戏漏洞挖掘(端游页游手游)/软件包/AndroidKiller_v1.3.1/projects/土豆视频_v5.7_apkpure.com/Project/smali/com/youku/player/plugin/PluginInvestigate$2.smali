.class Lcom/youku/player/plugin/PluginInvestigate$2;
.super Ljava/lang/Object;
.source "PluginInvestigate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/plugin/PluginInvestigate;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/plugin/PluginInvestigate;


# direct methods
.method constructor <init>(Lcom/youku/player/plugin/PluginInvestigate;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-virtual {v1}, Lcom/youku/player/plugin/PluginInvestigate;->release()V

    .line 97
    :try_start_0
    sget v1, Lcom/youku/player/goplay/Profile;->PLANTFORM:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.youku.action.YoukuWebview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginInvestigate;->access$100(Lcom/youku/player/plugin/PluginInvestigate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "isAdver"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/youku/player/ad/AdWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    invoke-static {v2}, Lcom/youku/player/plugin/PluginInvestigate;->access$100(Lcom/youku/player/plugin/PluginInvestigate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/youku/player/plugin/PluginInvestigate$2;->this$0:Lcom/youku/player/plugin/PluginInvestigate;

    iget-object v1, v1, Lcom/youku/player/plugin/PluginInvestigate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
