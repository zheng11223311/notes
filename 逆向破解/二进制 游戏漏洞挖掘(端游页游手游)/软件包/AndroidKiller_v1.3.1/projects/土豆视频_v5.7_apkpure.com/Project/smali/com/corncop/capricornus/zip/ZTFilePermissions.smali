.class Lcom/corncop/capricornus/zip/ZTFilePermissions;
.super Ljava/lang/Object;
.source "ZTFilePermissions.java"


# instance fields
.field private groupCanExecute:Z

.field private groupCanRead:Z

.field private groupCanWrite:Z

.field private isDirectory:Z

.field private othersCanExecute:Z

.field private othersCanRead:Z

.field private othersCanWrite:Z

.field private ownerCanExecute:Z

.field private ownerCanRead:Z

.field private ownerCanWrite:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isDirectory()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isDirectory:Z

    return v0
.end method

.method isGroupCanExecute()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->groupCanExecute:Z

    return v0
.end method

.method isGroupCanRead()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->groupCanRead:Z

    return v0
.end method

.method isGroupCanWrite()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->groupCanWrite:Z

    return v0
.end method

.method isOthersCanExecute()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->othersCanExecute:Z

    return v0
.end method

.method isOthersCanRead()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->othersCanRead:Z

    return v0
.end method

.method isOthersCanWrite()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->othersCanWrite:Z

    return v0
.end method

.method isOwnerCanExecute()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->ownerCanExecute:Z

    return v0
.end method

.method isOwnerCanRead()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->ownerCanRead:Z

    return v0
.end method

.method isOwnerCanWrite()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->ownerCanWrite:Z

    return v0
.end method

.method setDirectory(Z)V
    .locals 0
    .param p1, "isDirectory"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->isDirectory:Z

    .line 29
    return-void
.end method

.method setGroupCanExecute(Z)V
    .locals 0
    .param p1, "groupCanExecute"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->groupCanExecute:Z

    .line 77
    return-void
.end method

.method setGroupCanRead(Z)V
    .locals 0
    .param p1, "groupCanRead"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->groupCanRead:Z

    .line 61
    return-void
.end method

.method setGroupCanWrite(Z)V
    .locals 0
    .param p1, "groupCanWrite"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->groupCanWrite:Z

    .line 69
    return-void
.end method

.method setOthersCanExecute(Z)V
    .locals 0
    .param p1, "othersCanExecute"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->othersCanExecute:Z

    .line 101
    return-void
.end method

.method setOthersCanRead(Z)V
    .locals 0
    .param p1, "othersCanRead"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->othersCanRead:Z

    .line 85
    return-void
.end method

.method setOthersCanWrite(Z)V
    .locals 0
    .param p1, "othersCanWrite"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->othersCanWrite:Z

    .line 93
    return-void
.end method

.method setOwnerCanExecute(Z)V
    .locals 0
    .param p1, "ownerCanExecute"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->ownerCanExecute:Z

    .line 53
    return-void
.end method

.method setOwnerCanRead(Z)V
    .locals 0
    .param p1, "ownerCanRead"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->ownerCanRead:Z

    .line 37
    return-void
.end method

.method setOwnerCanWrite(Z)V
    .locals 0
    .param p1, "ownerCanWrite"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/corncop/capricornus/zip/ZTFilePermissions;->ownerCanWrite:Z

    .line 45
    return-void
.end method
