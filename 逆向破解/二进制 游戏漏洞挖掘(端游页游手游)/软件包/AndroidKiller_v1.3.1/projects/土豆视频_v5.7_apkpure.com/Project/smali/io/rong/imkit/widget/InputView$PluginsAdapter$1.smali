.class Lio/rong/imkit/widget/InputView$PluginsAdapter$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/InputView$PluginsAdapter;->bindView(Landroid/view/View;ILio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/widget/InputView$PluginsAdapter;

.field final synthetic val$data:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/InputView$PluginsAdapter;Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter$1;->this$1:Lio/rong/imkit/widget/InputView$PluginsAdapter;

    iput-object p2, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter$1;->val$data:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 542
    iget-object v0, p0, Lio/rong/imkit/widget/InputView$PluginsAdapter$1;->val$data:Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;

    invoke-virtual {v0, p1}, Lio/rong/imkit/widget/provider/InputProvider$ExtendProvider;->onPluginClick(Landroid/view/View;)V

    .line 543
    return-void
.end method
