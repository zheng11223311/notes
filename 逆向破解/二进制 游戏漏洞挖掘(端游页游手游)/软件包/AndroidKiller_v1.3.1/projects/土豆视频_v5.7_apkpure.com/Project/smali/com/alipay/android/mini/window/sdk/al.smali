.class Lcom/alipay/android/mini/window/sdk/al;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/al;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 3

    .prologue
    .line 219
    const-string v0, "<head>"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v0, "sdk_result_code:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 223
    const-string v1, "-->"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 225
    const-string/jumbo v2, "sdk_result_code:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/alipay/android/app/i;->a(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/alipay/android/mini/window/sdk/am;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/window/sdk/am;-><init>(Lcom/alipay/android/mini/window/sdk/al;)V

    .line 237
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/al;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    :cond_0
    const-string/jumbo v0, "true"

    invoke-virtual {p5, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/al;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 211
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/al;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    :cond_0
    return-void
.end method
