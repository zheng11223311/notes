.class public Lcom/unicom/iap/utils/SharedDB;
.super Ljava/lang/Object;
.source "SharedDB.java"


# static fields
.field private static instance:Lcom/unicom/iap/utils/SharedDB;

.field private static spMode:I

.field private static spName:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field editor:Landroid/content/SharedPreferences$Editor;

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "FreeWlan"

    sput-object v0, Lcom/unicom/iap/utils/SharedDB;->spName:Ljava/lang/String;

    .line 13
    const/4 v0, 0x3

    sput v0, Lcom/unicom/iap/utils/SharedDB;->spMode:I

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/unicom/iap/utils/SharedDB;->instance:Lcom/unicom/iap/utils/SharedDB;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/unicom/iap/utils/SharedDB;->context:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->context:Landroid/content/Context;

    invoke-virtual {v0, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unicom/iap/utils/SharedDB;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 19
    sget-object v0, Lcom/unicom/iap/utils/SharedDB;->instance:Lcom/unicom/iap/utils/SharedDB;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/unicom/iap/utils/SharedDB;

    sget-object v1, Lcom/unicom/iap/utils/SharedDB;->spName:Ljava/lang/String;

    sget v2, Lcom/unicom/iap/utils/SharedDB;->spMode:I

    invoke-direct {v0, p0, v1, v2}, Lcom/unicom/iap/utils/SharedDB;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/unicom/iap/utils/SharedDB;->instance:Lcom/unicom/iap/utils/SharedDB;

    .line 23
    :cond_0
    sget-object v0, Lcom/unicom/iap/utils/SharedDB;->instance:Lcom/unicom/iap/utils/SharedDB;

    return-object v0
.end method


# virtual methods
.method public final OpenEditor()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_0
    return-void
.end method

.method public final clearEditor()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 76
    return-void
.end method

.method public final closeEditor()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    .line 118
    return-void
.end method

.method public final commitEditor()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getMob()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public final getValue(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getValue(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 44
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final putValue(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 96
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 97
    return-void
.end method

.method public final putValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 101
    return-void
.end method

.method public final putValue(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 104
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 105
    return-void
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "value":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {p0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 85
    return-void
.end method

.method public final putValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    return-void
.end method

.method public final putValue(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    return-void
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    return-void
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    return-void
.end method

.method public final saveMob(Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonMop"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/unicom/iap/utils/SharedDB;->OpenEditor()V

    .line 128
    const-string v0, "isSaveMob"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "mob"

    invoke-virtual {p0, v0, p1}, Lcom/unicom/iap/utils/SharedDB;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/unicom/iap/utils/SharedDB;->commitEditor()V

    .line 131
    invoke-virtual {p0}, Lcom/unicom/iap/utils/SharedDB;->closeEditor()V

    .line 132
    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unicom/iap/utils/SharedDB;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 67
    return-void
.end method
