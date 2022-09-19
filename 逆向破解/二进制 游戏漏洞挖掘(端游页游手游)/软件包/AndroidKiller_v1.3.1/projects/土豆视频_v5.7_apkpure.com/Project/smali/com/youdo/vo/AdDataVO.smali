.class public Lcom/youdo/vo/AdDataVO;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/youdo/ad/interfaces/IAdDataVO;


# static fields
.field public static final TAG:Ljava/lang/String; = "AdDataVO"


# instance fields
.field public AL:I

.field public AT:I

.field public CF:I

.field public CU:Ljava/lang/String;

.field public CUM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public H:I

.field public JS:Ljava/lang/String;

.field public RS:Ljava/lang/String;

.field public RST:Ljava/lang/String;

.field public ST:I

.field public SU:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public SUE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public SUS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public VC:Ljava/lang/String;

.field public VT:I

.field public W:I

.field public contentVideoDuration:I

.field public wmHtml5AdAssetURL:Ljava/lang/String;

.field public wmHtml5AdContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/AdDataVO;->SU:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/AdDataVO;->SUS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/AdDataVO;->SUE:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youdo/vo/AdDataVO;->CUM:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "AL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youdo/vo/AdDataVO;->AL:I

    const-string v0, "BRS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/AdDataVO;->wmHtml5AdAssetURL:Ljava/lang/String;

    const-string v0, "RS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/AdDataVO;->RS:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdDataVO"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getApiFramework()Lorg/openad/constants/IOpenAdContants$ApiFramework;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->FULL_PACKAGE_OF_MOBILE_RICH_AD_INTERFACE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    return-object v0
.end method

.method public getHTML5AdAssetURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/AdDataVO;->wmHtml5AdAssetURL:Ljava/lang/String;

    return-object v0
.end method

.method public getHTML5AdContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/AdDataVO;->wmHtml5AdContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdAssetURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/AdDataVO;->RS:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdDuration()D
    .locals 2

    iget v0, p0, Lcom/youdo/vo/AdDataVO;->AL:I

    int-to-double v0, v0

    return-wide v0
.end method
