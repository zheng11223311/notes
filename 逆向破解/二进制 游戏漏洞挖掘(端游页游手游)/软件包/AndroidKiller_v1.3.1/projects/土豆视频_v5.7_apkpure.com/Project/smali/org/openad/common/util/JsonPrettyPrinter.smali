.class public Lorg/openad/common/util/JsonPrettyPrinter;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final tabWidth:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/openad/common/util/JsonPrettyPrinter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/openad/common/util/JsonPrettyPrinter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prettyPrintJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    array-length v10, v9

    move v5, v3

    move v4, v3

    move v6, v3

    move v1, v3

    :goto_0
    if-ge v5, v10, :cond_4

    aget-char v11, v9, v5

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sparse-switch v11, :sswitch_data_1

    :cond_1
    move v8, v1

    move v12, v6

    move-object v6, v7

    move v7, v12

    :goto_2
    if-eqz v4, :cond_3

    move v0, v3

    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    move-object v0, v6

    move v1, v8

    move v6, v7

    goto :goto_0

    :sswitch_0
    if-nez v6, :cond_0

    add-int/lit8 v1, v1, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    mul-int/lit8 v8, v1, 0x4

    invoke-static {v7, v8}, Lorg/openad/common/util/JsonPrettyPrinter;->strrepeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    if-nez v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    mul-int/lit8 v8, v1, 0x4

    invoke-static {v7, v8}, Lorg/openad/common/util/JsonPrettyPrinter;->strrepeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v7, v6

    move v8, v1

    move-object v6, v0

    goto :goto_2

    :sswitch_2
    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v7, v6

    move v8, v1

    move-object v6, v0

    goto :goto_2

    :sswitch_3
    if-nez v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    mul-int/lit8 v8, v1, 0x4

    invoke-static {v7, v8}, Lorg/openad/common/util/JsonPrettyPrinter;->strrepeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v7, v6

    move v8, v1

    move-object v6, v0

    goto/16 :goto_2

    :sswitch_4
    if-nez v4, :cond_1

    if-nez v6, :cond_2

    move v0, v2

    :goto_4
    move-object v6, v7

    move v8, v1

    move v7, v0

    goto/16 :goto_2

    :cond_2
    move v0, v3

    goto :goto_4

    :cond_3
    const/16 v0, 0x5c

    if-ne v11, v0, :cond_5

    move v0, v2

    goto/16 :goto_3

    :cond_4
    return-object v0

    :cond_5
    move v0, v4

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0x5d -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_4
        0x2c -> :sswitch_3
        0x3a -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method private static strrepeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lorg/openad/common/util/JsonPrettyPrinter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
