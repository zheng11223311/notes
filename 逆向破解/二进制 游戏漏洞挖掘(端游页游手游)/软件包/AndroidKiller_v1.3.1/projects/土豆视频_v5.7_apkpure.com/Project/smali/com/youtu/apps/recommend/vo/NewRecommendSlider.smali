.class public Lcom/youtu/apps/recommend/vo/NewRecommendSlider;
.super Ljava/lang/Object;
.source "NewRecommendSlider.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x456ce5c659398fbaL


# instance fields
.field private apk_class_name:Ljava/lang/String;

.field private apk_or_url:Ljava/lang/String;

.field private apk_package:Ljava/lang/String;

.field private application_index:I

.field private description:Ljava/lang/String;

.field private download_count:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private slider_logo:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private version_code:Ljava/lang/String;

.field private version_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApk_class_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->apk_class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_or_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->apk_or_url:Ljava/lang/String;

    return-object v0
.end method

.method public getApk_package()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->apk_package:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication_index()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->application_index:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDownload_count()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->download_count:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlider_logo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->slider_logo:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->version_code:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->version_name:Ljava/lang/String;

    return-object v0
.end method

.method public setApk_class_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "apk_class_name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->apk_class_name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setApk_or_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "apk_or_url"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->apk_or_url:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setApk_package(Ljava/lang/String;)V
    .locals 0
    .param p1, "apk_package"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->apk_package:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setApplication_index(I)V
    .locals 0
    .param p1, "application_index"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->application_index:I

    .line 99
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->description:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDownload_count(Ljava/lang/String;)V
    .locals 0
    .param p1, "download_count"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->download_count:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->id:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->logo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSlider_logo(Ljava/lang/String;)V
    .locals 0
    .param p1, "slider_logo"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->slider_logo:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->version:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setVersion_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "version_code"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->version_code:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVersion_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "version_name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/youtu/apps/recommend/vo/NewRecommendSlider;->version_name:Ljava/lang/String;

    .line 75
    return-void
.end method
