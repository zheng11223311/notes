.class final Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil$1;
.super Ljava/lang/Object;
.source "ZTFilePermissionsUtil.java"

# interfaces
.implements Lcom/corncop/capricornus/zip/ZTFilePermissionsStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/capricornus/zip/ZTFilePermissionsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissions(Ljava/io/File;)Lcom/corncop/capricornus/zip/ZTFilePermissions;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPermissions(Ljava/io/File;Lcom/corncop/capricornus/zip/ZTFilePermissions;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "permissions"    # Lcom/corncop/capricornus/zip/ZTFilePermissions;

    .prologue
    .line 95
    return-void
.end method
