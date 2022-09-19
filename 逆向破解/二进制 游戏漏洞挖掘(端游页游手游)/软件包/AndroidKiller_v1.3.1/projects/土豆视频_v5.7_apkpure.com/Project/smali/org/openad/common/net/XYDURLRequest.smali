.class public Lorg/openad/common/net/XYDURLRequest;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_TYPE_FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final CONTENT_TYPE_TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final METHOD_GET:I = 0x1

.field public static final METHOD_POST:I


# instance fields
.field public contentType:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public delayMs:J

.field public method:I

.field public url:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/openad/common/net/XYDURLRequest;->delayMs:J

    const-string/jumbo v0, "text/plain"

    iput-object v0, p0, Lorg/openad/common/net/XYDURLRequest;->contentType:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lorg/openad/common/net/XYDURLRequest;->method:I

    iput-object p1, p0, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;

    iput-object p2, p0, Lorg/openad/common/net/XYDURLRequest;->userAgent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/common/net/XYDURLRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lorg/openad/common/util/URIUtil;->getFixedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
