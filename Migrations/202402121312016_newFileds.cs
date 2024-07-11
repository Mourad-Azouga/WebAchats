namespace WebAchats2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class newFileds : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "Societe", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "Societe");
        }
    }
}
