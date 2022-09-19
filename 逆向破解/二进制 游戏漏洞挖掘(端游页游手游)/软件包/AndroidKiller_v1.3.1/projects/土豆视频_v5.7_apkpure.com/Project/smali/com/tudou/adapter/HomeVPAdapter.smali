.class public Lcom/tudou/adapter/HomeVPAdapter;
.super Lcom/youku/widget/viewpager/FragmentStatePagerAdapter;
.source "HomeVPAdapter.java"

# interfaces
.implements Lcom/youku/widget/viewpager/ViewPager$OnPageChangeListener;


# static fields
.field private static final FRAGMENT_SIZE:I = 0x4


# instance fields
.field bundle:Landroid/os/Bundle;

.field context:Landroid/content/Context;

.field tudoutab:Lcom/youku/widget/TudouTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Landroid/os/Bundle;Lcom/youku/widget/TudouTab;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "tudoutab"    # Lcom/youku/widget/TudouTab;

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/youku/widget/viewpager/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 37
    iput-object p1, p0, Lcom/tudou/adapter/HomeVPAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/tudou/adapter/HomeVPAdapter;->bundle:Landroid/os/Bundle;

    .line 39
    iput-object p4, p0, Lcom/tudou/adapter/HomeVPAdapter;->tudoutab:Lcom/youku/widget/TudouTab;

    .line 40
    invoke-direct {p0}, Lcom/tudou/adapter/HomeVPAdapter;->initFragments()V

    .line 41
    return-void
.end method

.method private initFragments()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/youku/widget/viewpager/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 50
    const-string v0, "Tudou_Fragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    packed-switch p1, :pswitch_data_0

    .line 94
    :goto_0
    const-string v1, "Tudou_Fragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0

    .line 73
    :pswitch_0
    iget-object v1, p0, Lcom/tudou/adapter/HomeVPAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/HomeVPAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 75
    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v1, p0, Lcom/tudou/adapter/HomeVPAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/fragment/SubscribeFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/HomeVPAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    check-cast v0, Lcom/tudou/ui/fragment/SubscribeFragment;

    .line 80
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lcom/tudou/adapter/HomeVPAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/HomeVPAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    check-cast v0, Lcom/tudou/ui/fragment/DiscoveryFragment;

    .line 85
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v1, p0, Lcom/tudou/adapter/HomeVPAdapter;->context:Landroid/content/Context;

    const-class v2, Lcom/tudou/ui/fragment/AccountFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/adapter/HomeVPAdapter;->bundle:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    check-cast v0, Lcom/tudou/ui/fragment/AccountFragment;

    .line 90
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "arg0"    # Landroid/view/ViewGroup;
    .param p2, "arg1"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/youku/widget/viewpager/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 57
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    :try_start_0
    const-class v3, Landroid/support/v4/app/Fragment;

    const-string v4, "mSavedFragmentState"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 58
    .local v1, "saveFragmentStateField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 60
    .local v2, "savedFragmentState":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 61
    const-class v3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "saveFragmentStateField":Ljava/lang/reflect/Field;
    .end local v2    # "savedFragmentState":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 111
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 119
    return-void
.end method
