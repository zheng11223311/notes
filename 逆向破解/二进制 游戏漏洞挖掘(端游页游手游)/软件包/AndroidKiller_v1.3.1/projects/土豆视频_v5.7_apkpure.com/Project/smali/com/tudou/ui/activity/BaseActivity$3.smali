.class synthetic Lcom/tudou/ui/activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$youku$util$IConfirm$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 446
    invoke-static {}, Lcom/youku/util/IConfirm$Status;->values()[Lcom/youku/util/IConfirm$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/tudou/ui/activity/BaseActivity$3;->$SwitchMap$com$youku$util$IConfirm$Status:[I

    :try_start_0
    sget-object v0, Lcom/tudou/ui/activity/BaseActivity$3;->$SwitchMap$com$youku$util$IConfirm$Status:[I

    sget-object v1, Lcom/youku/util/IConfirm$Status;->FINISH:Lcom/youku/util/IConfirm$Status;

    invoke-virtual {v1}, Lcom/youku/util/IConfirm$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
