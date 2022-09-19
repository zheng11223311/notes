.class public Lcom/youku/vo/PhotoCut;
.super Ljava/lang/Object;
.source "PhotoCut.java"


# instance fields
.field public broadcast_count:Ljava/lang/String;

.field public content:[Ljava/lang/String;

.field public download:Ljava/lang/String;

.field public front_tag:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 18
    .local v0, "retStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/vo/PhotoCut;->content:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/vo/PhotoCut;->content:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/youku/vo/PhotoCut;->content:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 21
    :cond_0
    return-object v0
.end method

.method public getDownload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "retStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/vo/PhotoCut;->download:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/youku/vo/PhotoCut;->download:Ljava/lang/String;

    .line 37
    :cond_0
    return-object v0
.end method

.method public getFrontTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "retStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/vo/PhotoCut;->front_tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/youku/vo/PhotoCut;->front_tag:Ljava/lang/String;

    .line 29
    :cond_0
    return-object v0
.end method
