.class Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;
.super Lcom/mobisage/android/MobiSageTask;
.source "MobiSageConfigureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageConfigureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobiSageServerDomainTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageConfigureModule;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;)V
    .locals 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    .line 181
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTask;-><init>()V

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->delayTime:J

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->isRate:Z

    .line 184
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->periodTime:J

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageConfigureModule$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 192
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageConfigureModule;->access$500(Lcom/mobisage/android/MobiSageConfigureModule;)Lcom/mobisage/android/MobiSageConfigureModule$ConfigureDomainCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 193
    iget-object v2, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v3, "cfgurl"

    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageServerDomainTask;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageConfigureModule;->access$400(Lcom/mobisage/android/MobiSageConfigureModule;)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v1, v0, Lcom/mobisage/android/MobiSageAction;->params:Landroid/os/Bundle;

    const-string v2, "isupdate"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v1

    const/16 v2, 0xbb9

    invoke-virtual {v1, v2, v0}, Lcom/mobisage/android/MobiSageConfigureModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v0    # "action":Lcom/mobisage/android/MobiSageAction;
    :cond_0
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v1

    goto :goto_0
.end method
