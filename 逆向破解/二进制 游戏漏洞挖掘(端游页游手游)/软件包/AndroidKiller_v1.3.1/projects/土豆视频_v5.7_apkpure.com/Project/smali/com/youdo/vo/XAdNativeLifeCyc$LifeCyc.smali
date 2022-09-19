.class public Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youdo/vo/XAdNativeLifeCyc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifeCyc"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LifeCyc"


# instance fields
.field private mEndDate:Ljava/util/Date;

.field private mIsValidLifeCyc:Ljava/lang/Boolean;

.field private mStartDate:Ljava/util/Date;

.field final synthetic this$0:Lcom/youdo/vo/XAdNativeLifeCyc;


# direct methods
.method public constructor <init>(Lcom/youdo/vo/XAdNativeLifeCyc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "yyyyMMddHHmm"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;-><init>(Lcom/youdo/vo/XAdNativeLifeCyc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/youdo/vo/XAdNativeLifeCyc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    iput-object p1, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->this$0:Lcom/youdo/vo/XAdNativeLifeCyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mIsValidLifeCyc:Ljava/lang/Boolean;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0, p3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mEndDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mIsValidLifeCyc:Ljava/lang/Boolean;

    const-string v1, "LifeCyc"

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/youdo/vo/XAdNativeLifeCyc;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    iput-object p1, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->this$0:Lcom/youdo/vo/XAdNativeLifeCyc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mIsValidLifeCyc:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mStartDate:Ljava/util/Date;

    iput-object p3, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mEndDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public contains(Ljava/util/Date;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->isValidLifeCyc()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :cond_1
    invoke-virtual {p0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->getEndDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public isValidLifeCyc()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/youdo/vo/XAdNativeLifeCyc$LifeCyc;->mIsValidLifeCyc:Ljava/lang/Boolean;

    return-object v0
.end method
