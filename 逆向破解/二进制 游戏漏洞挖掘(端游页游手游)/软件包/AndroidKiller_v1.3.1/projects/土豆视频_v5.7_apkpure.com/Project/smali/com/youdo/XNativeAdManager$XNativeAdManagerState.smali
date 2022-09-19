.class public final enum Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/XNativeAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XNativeAdManagerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youdo/XNativeAdManager$XNativeAdManagerState;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum AD_SERVER_REQUESTING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum AD_SERVER_REQUEST_ERROR:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum AD_SERVER_REQUEST_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum AD_SERVER_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum AD_SERVER_STARTED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum ASSET_DOWNLOAD_IN_PROGRESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum ASSET_DOWNLOAD_PAUSED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum ASSET_DOWNLOAD_PENDING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum ASSET_DOWNLOAD_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum ASSET_DOWNLOAD_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum NATIVE_DB_REFRESH_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

.field public static final enum UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "AD_SERVER_START"

    const-string v2, "ad_server_start"

    invoke-direct {v0, v1, v5, v2}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "AD_SERVER_STARTED"

    const-string v2, "ad_server_started"

    invoke-direct {v0, v1, v6, v2}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_STARTED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "AD_SERVER_REQUESTING"

    const-string v2, "ad_server_requesting"

    invoke-direct {v0, v1, v7, v2}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUESTING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "AD_SERVER_REQUEST_ERROR"

    const-string/jumbo v2, "request_error"

    invoke-direct {v0, v1, v8, v2}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_ERROR:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "AD_SERVER_REQUEST_SUCCESS"

    const/4 v2, 0x5

    const-string/jumbo v3, "request_complete"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "ASSET_DOWNLOAD_START"

    const/4 v2, 0x6

    const-string v3, "asset_download_start"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "ASSET_DOWNLOAD_IN_PROGRESS"

    const/4 v2, 0x7

    const-string v3, "asset_download_in_progress"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_IN_PROGRESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "ASSET_DOWNLOAD_PAUSED"

    const/16 v2, 0x8

    const-string v3, "asset_download_paused"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PAUSED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "ASSET_DOWNLOAD_PENDING"

    const/16 v2, 0x9

    const-string v3, "asset_download_pending"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PENDING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "ASSET_DOWNLOAD_SUCCESS"

    const/16 v2, 0xa

    const-string v3, "asset_download_success"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    new-instance v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const-string v1, "NATIVE_DB_REFRESH_SUCCESS"

    const/16 v2, 0xb

    const-string v3, "native_db_refresh_success"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->NATIVE_DB_REFRESH_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->UNKNOWN:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_STARTED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUESTING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_ERROR:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_REQUEST_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_START:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_IN_PROGRESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PAUSED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_PENDING:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->NATIVE_DB_REFRESH_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->$VALUES:[Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    .locals 5

    invoke-static {}, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->values()[Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    .locals 1

    const-class v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    return-object v0
.end method

.method public static values()[Lcom/youdo/XNativeAdManager$XNativeAdManagerState;
    .locals 1

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->$VALUES:[Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    invoke-virtual {v0}, [Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    return-object v0
.end method


# virtual methods
.method public allowRequestAdServer()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->AD_SERVER_STARTED:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->ASSET_DOWNLOAD_SUCCESS:Lcom/youdo/XNativeAdManager$XNativeAdManagerState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$XNativeAdManagerState;->value:Ljava/lang/String;

    return-object v0
.end method
