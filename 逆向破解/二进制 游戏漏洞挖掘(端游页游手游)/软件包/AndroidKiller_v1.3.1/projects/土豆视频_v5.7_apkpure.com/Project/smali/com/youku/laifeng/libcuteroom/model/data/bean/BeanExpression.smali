.class public Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;
.super Ljava/lang/Object;
.source "BeanExpression.java"


# instance fields
.field private RealName:Ljava/lang/String;

.field private ResName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->ResName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->RealName:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->ResName:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->RealName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->ResName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->RealName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->RealName:Ljava/lang/String;

    return-object v0
.end method

.method public getResName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->ResName:Ljava/lang/String;

    return-object v0
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0
    .param p1, "realName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->RealName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setResName(Ljava/lang/String;)V
    .locals 0
    .param p1, "resName"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/youku/laifeng/libcuteroom/model/data/bean/BeanExpression;->ResName:Ljava/lang/String;

    .line 19
    return-void
.end method
