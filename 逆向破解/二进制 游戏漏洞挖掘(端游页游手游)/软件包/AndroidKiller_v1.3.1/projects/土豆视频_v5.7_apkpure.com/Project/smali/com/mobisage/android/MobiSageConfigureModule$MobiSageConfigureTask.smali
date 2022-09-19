.class Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;
.super Lcom/mobisage/android/MobiSageTask;
.source "MobiSageConfigureModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobisage/android/MobiSageConfigureModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobiSageConfigureTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageConfigureModule;


# direct methods
.method private constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;)V
    .locals 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    .line 267
    invoke-direct {p0}, Lcom/mobisage/android/MobiSageTask;-><init>()V

    .line 268
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;->delayTime:J

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;->isRate:Z

    .line 270
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;->periodTime:J

    .line 271
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobisage/android/MobiSageConfigureModule;Lcom/mobisage/android/MobiSageConfigureModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobisage/android/MobiSageConfigureModule;
    .param p2, "x1"    # Lcom/mobisage/android/MobiSageConfigureModule$1;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;-><init>(Lcom/mobisage/android/MobiSageConfigureModule;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    new-instance v0, Lcom/mobisage/android/MobiSageAction;

    invoke-direct {v0}, Lcom/mobisage/android/MobiSageAction;-><init>()V

    .line 276
    .local v0, "action":Lcom/mobisage/android/MobiSageAction;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageConfigureModule$MobiSageConfigureTask;->this$0:Lcom/mobisage/android/MobiSageConfigureModule;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageConfigureModule;->access$600(Lcom/mobisage/android/MobiSageConfigureModule;)Lcom/mobisage/android/MobiSageConfigureModule$ConfigureActionCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/mobisage/android/MobiSageAction;->callback:Lcom/mobisage/android/IMobiSageActionCallback;

    .line 277
    invoke-static {}, Lcom/mobisage/android/MobiSageConfigureModule;->getInstance()Lcom/mobisage/android/MobiSageConfigureModule;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2, v0}, Lcom/mobisage/android/MobiSageConfigureModule;->pushMobiSageAction(ILcom/mobisage/android/MobiSageAction;)V

    .line 279
    return-void
.end method
