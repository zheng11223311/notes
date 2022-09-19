.class public Lcom/punchbox/exception/PBException;
.super Ljava/lang/Exception;


# static fields
.field public static final AD_CLOSE:I = 0x3ed

.field public static final AD_CLOSE_OR_NOT_LOAD_AD:I = 0x7d5

.field public static final AD_IS_NOT_READY:I = 0x7d6

.field public static final AD_SCALE_IS_OUT_OF_BOUND:I = 0x7d7

.field public static final APP_CLOSE:I = 0x3f2

.field public static final CONTEXT_HAS_BEEN_DESTROY:I = 0x7d9

.field public static final CONTEXT_IS_NOT_TYPE_OF_ACTIVITY:I = 0x7d8

.field public static final IMAGE_LOAD_TIMEOUT:I = 0x7da

.field public static final LESS_THAN_SDK_VERSION:I = 0x7d3

.field public static final MSG_AD_CLOSE:Ljava/lang/String; = "Ad is closed or not loadAd"

.field public static final MSG_AD_IS_NOT_READY:Ljava/lang/String; = "ad is not ready."

.field public static final MSG_APP_CLOSE:Ljava/lang/String; = "App switch is closed"

.field public static final MSG_IMAGE_LOAD_TIMEOUT:Ljava/lang/String; = "Load image time out"

.field public static final MSG_NETWORK_ERROR:Ljava/lang/String; = "Network error"

.field public static final MSG_NO_NETWORK_CONNECT:Ljava/lang/String; = "Network is not connected"

.field public static final MSG_NO_SUITABLE_AD_GROUP:Ljava/lang/String; = "No suitable ad group"

.field public static final MSG_NO_SUITABLE_AD_STORE:Ljava/lang/String; = "No suitable ad store"

.field public static final MSG_NO_SUITABLE_AD_STORE_URL:Ljava/lang/String; = "No suitable ad store url"

.field public static final MSG_NO_SUITABLE_AD_TEMPLATE:Ljava/lang/String; = "No suitable ad template"

.field public static final MSG_PARAMETER_SCALE_INVALID:Ljava/lang/String; = "Parameter \"scale\" is out of bound ,must between 0.5 ~ 1.0"

.field public static final NETWORK_ERROR:I = 0x7d1

.field public static final NO_NETWORK_CONNECT:I = 0x7d0

.field public static final NO_SUITABLE_AD_GROUP:I = 0x3ee

.field public static final NO_SUITABLE_AD_STORE:I = 0x3ef

.field public static final NO_SUITABLE_AD_STORE_URL:I = 0x3f0

.field public static final NO_SUITABLE_AD_TEMPLATE:I = 0x3f1

.field public static final REMOTE_ERROR:I = 0x7d4

.field public static final RETURN_NULL:I = 0x7d2


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/punchbox/exception/PBException;->a:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/punchbox/exception/PBException;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/punchbox/exception/PBException;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/punchbox/exception/PBException;->a:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/exception/PBException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PBException]  errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/punchbox/exception/PBException;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
