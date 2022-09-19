.class Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;
.super Lio/rong/imlib/RongIMClient$ResultCallback;
.source "TextInputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/rong/imlib/RongIMClient$ResultCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;

    invoke-direct {p0}, Lio/rong/imlib/RongIMClient$ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lio/rong/imlib/RongIMClient$ErrorCode;)V
    .locals 0
    .param p1, "e"    # Lio/rong/imlib/RongIMClient$ErrorCode;

    .prologue
    .line 158
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable$1;->this$1:Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/TextInputProvider$DraftRenderRunnable;->this$0:Lio/rong/imkit/widget/provider/TextInputProvider;

    iget-object v0, v0, Lio/rong/imkit/widget/provider/TextInputProvider;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 153
    :cond_0
    return-void
.end method
