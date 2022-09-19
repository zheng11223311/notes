.class Lio/rong/imkit/widget/provider/VoIPInputProvider$1;
.super Ljava/lang/Object;
.source "VoIPInputProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/widget/provider/VoIPInputProvider;->onEventBackgroundThread(Lio/rong/imkit/model/Event$OnReceiveVoIPMessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

.field final synthetic val$message:Lio/rong/imlib/model/Message;


# direct methods
.method constructor <init>(Lio/rong/imkit/widget/provider/VoIPInputProvider;Lio/rong/imlib/model/Message;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

    iput-object p2, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;->val$message:Lio/rong/imlib/model/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;->this$0:Lio/rong/imkit/widget/provider/VoIPInputProvider;

    iget-wide v10, v7, Lio/rong/imkit/widget/provider/VoIPInputProvider;->mDeltaTime:J

    sub-long v4, v8, v10

    .line 153
    .local v4, "normalTime":J
    iget-object v7, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v7}, Lio/rong/imlib/model/Message;->getSentTime()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/16 v10, 0x4e20

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    sget-object v7, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v8, "arm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 162
    const-string v7, "onEventBackgroundThread(message)"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----receive VoIP message-----VoIPCallMessage---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v9}, Lio/rong/imlib/model/Message;->getObjectName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v3, "intent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rong://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "VoIPAccept"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 169
    .local v6, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 172
    .local v0, "appKey":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v8

    invoke-virtual {v8}, Lio/rong/imkit/RongContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 173
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7}, Lio/rong/imkit/RongContext;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 175
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "RONG_CLOUD_APP_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    const-string v7, "VoIPCallMessage"

    iget-object v8, p0, Lio/rong/imkit/widget/provider/VoIPInputProvider$1;->val$message:Lio/rong/imlib/model/Message;

    invoke-virtual {v8}, Lio/rong/imlib/model/Message;->getContent()Lio/rong/imlib/model/MessageContent;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v7, "appId"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v7, "peerUserPhoteUri"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v7, 0x30000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lio/rong/imkit/RongContext;->getInstance()Lio/rong/imkit/RongContext;

    move-result-object v7

    invoke-virtual {v7, v3}, Lio/rong/imkit/RongContext;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "VoIPInputProvider"

    const-string v8, "appkey is null"

    invoke-static {p0, v7, v8}, Lio/rong/imkit/RLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
