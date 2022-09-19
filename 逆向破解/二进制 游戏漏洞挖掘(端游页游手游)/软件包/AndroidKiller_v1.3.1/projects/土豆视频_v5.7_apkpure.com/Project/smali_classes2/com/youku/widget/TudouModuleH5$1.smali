.class Lcom/youku/widget/TudouModuleH5$1;
.super Ljava/lang/Object;
.source "TudouModuleH5.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TudouModuleH5;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TudouModuleH5;


# direct methods
.method constructor <init>(Lcom/youku/widget/TudouModuleH5;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/youku/widget/TudouModuleH5$1;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$1;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$000(Lcom/youku/widget/TudouModuleH5;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$1;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v0}, Lcom/youku/widget/TudouModuleH5;->access$100(Lcom/youku/widget/TudouModuleH5;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/widget/TudouModuleH5$1;->this$0:Lcom/youku/widget/TudouModuleH5;

    invoke-static {v1}, Lcom/youku/widget/TudouModuleH5;->access$000(Lcom/youku/widget/TudouModuleH5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/youku/widget/TudouModuleH5$1;->this$0:Lcom/youku/widget/TudouModuleH5;

    sget-object v1, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_START:Lcom/youku/widget/TudouModuleH5$LoadingState;

    invoke-static {v0, v1}, Lcom/youku/widget/TudouModuleH5;->access$200(Lcom/youku/widget/TudouModuleH5;Lcom/youku/widget/TudouModuleH5$LoadingState;)V

    goto :goto_0
.end method
