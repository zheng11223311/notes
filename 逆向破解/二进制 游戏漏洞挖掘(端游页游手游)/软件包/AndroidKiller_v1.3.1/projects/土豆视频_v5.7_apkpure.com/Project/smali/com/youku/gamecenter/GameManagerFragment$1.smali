.class synthetic Lcom/youku/gamecenter/GameManagerFragment$1;
.super Ljava/lang/Object;
.source "GameManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

.field static final synthetic $SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/youku/gamecenter/data/GameInfoStatus;->values()[Lcom/youku/gamecenter/data/GameInfoStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    :try_start_0
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_ING:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PAUSE:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_STOP:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_PENDING:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_DOWNLOAD_DONE:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$data$GameInfoStatus:[I

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_UPDATEABLE:Lcom/youku/gamecenter/data/GameInfoStatus;

    invoke-virtual {v1}, Lcom/youku/gamecenter/data/GameInfoStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    .line 235
    :goto_6
    invoke-static {}, Lcom/youku/gamecenter/widgets/ActionItem;->values()[Lcom/youku/gamecenter/widgets/ActionItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I

    :try_start_7
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_CANCEL:Lcom/youku/gamecenter/widgets/ActionItem;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/ActionItem;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_DELETE:Lcom/youku/gamecenter/widgets/ActionItem;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/ActionItem;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_UNINSTALL:Lcom/youku/gamecenter/widgets/ActionItem;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/ActionItem;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$1;->$SwitchMap$com$youku$gamecenter$widgets$ActionItem:[I

    sget-object v1, Lcom/youku/gamecenter/widgets/ActionItem;->ACTION_INFO:Lcom/youku/gamecenter/widgets/ActionItem;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/ActionItem;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    .line 281
    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
