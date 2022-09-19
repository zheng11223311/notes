.class Lcom/punchbox/engine/an;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/punchbox/engine/PunchBoxService;


# direct methods
.method private constructor <init>(Lcom/punchbox/engine/PunchBoxService;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/punchbox/engine/an;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/engine/PunchBoxService;Lcom/punchbox/engine/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/an;-><init>(Lcom/punchbox/engine/PunchBoxService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v11, 0x0

    const-string v0, "CoCoAdSDK-PunchBoxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", service package name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-virtual {v2}, Lcom/punchbox/engine/PunchBoxService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "client_version"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service_version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/punchbox/engine/i;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    sget v1, Lcom/punchbox/engine/i;->i:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0, p1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "Invalid msg received"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0, p1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "MSG_REQUEST_DOWNLOAD"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0, p1, v8}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    const-string v1, "adInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", adInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v1}, Lcom/punchbox/engine/PunchBoxService;->d(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/engine/j;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v11}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v1}, Lcom/punchbox/engine/PunchBoxService;->d(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/engine/j;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    const/16 v3, 0x903

    invoke-virtual {v1, v2, v0, v3}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/punchbox/v4/h/h;

    invoke-direct {v2}, Lcom/punchbox/v4/h/h;-><init>()V

    invoke-virtual {v2, v1}, Lcom/punchbox/v4/h/h;->c(Ljava/lang/String;)Lcom/punchbox/data/DownloadCompleteInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CoCoAdSDK-PunchBoxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbinfor.adInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    const-string v5, "&pid="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v7, :cond_2

    iget-object v5, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v5, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    const-string v4, "CoCoAdSDK-PunchBoxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbinfor.adInfo.substring : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v4, Lcom/punchbox/v4/h/k;

    invoke-direct {v4}, Lcom/punchbox/v4/h/k;-><init>()V

    iget-object v5, v3, Lcom/punchbox/data/DownloadCompleteInfo;->adInfo:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/punchbox/v4/h/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CoCoAdSDK-PunchBoxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preAppinfor : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lcom/punchbox/data/DownloadCompleteInfo;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&url="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v3, Lcom/punchbox/data/DownloadCompleteInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v3, "CoCoAdSDK-PunchBoxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAdInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/punchbox/util/PBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lcom/punchbox/v4/h/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "MSG_REQUEST_SUBMIT_REPORT"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    const-string/jumbo v1, "sub_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/an;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->e(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/report/j;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/an;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/punchbox/engine/an;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/report/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "MSG_REQUEST_DOWNLOADED_APPS"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    new-instance v0, Lcom/punchbox/engine/al;

    iget-object v1, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v0, v1, v2}, Lcom/punchbox/engine/al;-><init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Messenger;)V

    invoke-virtual {v0}, Lcom/punchbox/engine/al;->start()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "MSG_REQUEST_DOWNLOADING_APPS"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->d(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/engine/j;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/punchbox/engine/j;->a(Landroid/os/Messenger;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->f(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "Built-in app is installing."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "build_in_app_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/punchbox/engine/i;->g:Ljava/lang/String;

    :cond_6
    const-string v1, "adinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "adType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "isInner"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BuiltInApp"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->f(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v10, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    new-instance v0, Lcom/punchbox/engine/ak;

    iget-object v1, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    iget-object v2, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v2}, Lcom/punchbox/engine/PunchBoxService;->f(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/punchbox/engine/ak;-><init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/punchbox/engine/aj;)V

    invoke-static {v10, v0}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->g(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->h(Lcom/punchbox/engine/PunchBoxService;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0, p1, v8}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appv"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CoCoAdSDK-PunchBoxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", appv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v2}, Lcom/punchbox/engine/PunchBoxService;->d(Lcom/punchbox/engine/PunchBoxService;)Lcom/punchbox/engine/j;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/punchbox/engine/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v1, "MSG_REQUEST_PREDOWNLOAD_READY_ADS"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Message;I)V

    new-instance v0, Lcom/punchbox/engine/am;

    iget-object v1, p0, Lcom/punchbox/engine/an;->c:Lcom/punchbox/engine/PunchBoxService;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v0, v1, v2}, Lcom/punchbox/engine/am;-><init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Messenger;)V

    invoke-virtual {v0}, Lcom/punchbox/engine/am;->start()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x7 -> :sswitch_4
        0x8 -> :sswitch_1
        0x3e9 -> :sswitch_6
    .end sparse-switch
.end method
