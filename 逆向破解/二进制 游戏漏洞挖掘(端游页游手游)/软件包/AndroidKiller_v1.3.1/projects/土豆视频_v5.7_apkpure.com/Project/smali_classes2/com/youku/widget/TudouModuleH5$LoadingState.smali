.class public final enum Lcom/youku/widget/TudouModuleH5$LoadingState;
.super Ljava/lang/Enum;
.source "TudouModuleH5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TudouModuleH5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/widget/TudouModuleH5$LoadingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/widget/TudouModuleH5$LoadingState;

.field public static final enum LOADING_FAILED:Lcom/youku/widget/TudouModuleH5$LoadingState;

.field public static final enum LOADING_START:Lcom/youku/widget/TudouModuleH5$LoadingState;

.field public static final enum LOADING_SUCCESS:Lcom/youku/widget/TudouModuleH5$LoadingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 262
    new-instance v0, Lcom/youku/widget/TudouModuleH5$LoadingState;

    const-string v1, "LOADING_START"

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/TudouModuleH5$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_START:Lcom/youku/widget/TudouModuleH5$LoadingState;

    .line 263
    new-instance v0, Lcom/youku/widget/TudouModuleH5$LoadingState;

    const-string v1, "LOADING_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/youku/widget/TudouModuleH5$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_SUCCESS:Lcom/youku/widget/TudouModuleH5$LoadingState;

    .line 264
    new-instance v0, Lcom/youku/widget/TudouModuleH5$LoadingState;

    const-string v1, "LOADING_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/youku/widget/TudouModuleH5$LoadingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_FAILED:Lcom/youku/widget/TudouModuleH5$LoadingState;

    .line 261
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/widget/TudouModuleH5$LoadingState;

    sget-object v1, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_START:Lcom/youku/widget/TudouModuleH5$LoadingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_SUCCESS:Lcom/youku/widget/TudouModuleH5$LoadingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/widget/TudouModuleH5$LoadingState;->LOADING_FAILED:Lcom/youku/widget/TudouModuleH5$LoadingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/widget/TudouModuleH5$LoadingState;->$VALUES:[Lcom/youku/widget/TudouModuleH5$LoadingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/widget/TudouModuleH5$LoadingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    const-class v0, Lcom/youku/widget/TudouModuleH5$LoadingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/TudouModuleH5$LoadingState;

    return-object v0
.end method

.method public static values()[Lcom/youku/widget/TudouModuleH5$LoadingState;
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/youku/widget/TudouModuleH5$LoadingState;->$VALUES:[Lcom/youku/widget/TudouModuleH5$LoadingState;

    invoke-virtual {v0}, [Lcom/youku/widget/TudouModuleH5$LoadingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/widget/TudouModuleH5$LoadingState;

    return-object v0
.end method
