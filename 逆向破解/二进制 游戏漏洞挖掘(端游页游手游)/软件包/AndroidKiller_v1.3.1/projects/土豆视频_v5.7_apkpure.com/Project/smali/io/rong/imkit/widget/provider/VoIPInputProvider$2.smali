.class Lio/rong/imkit/widget/provider/VoIPInputProvider$2;
.super Ljava/lang/Object;
.source "VoIPInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/VoIPInputProvider;->openVoIPActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/VoIPInputProvider;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rong://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

    iget-object v2, v2, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v2}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "VoIPCall"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 244
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->val$intent:Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

    iget-object v1, v1, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mFragment:Lio/rong/imkit/fragment/MessageInputFragment;

    invoke-virtual {v1}, Lio/rong/imkit/fragment/MessageInputFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method
